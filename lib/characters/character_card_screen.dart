import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/characters_bloc.dart';
import 'package:morty_api/characters/widgets/favorite_button_widget.dart';

class CharacterCardScreen extends StatelessWidget {
  static const path = '/character_card';
  final int characterId;

  static get(Object? arguments) => (BuildContext context) =>
      CharacterCardScreen(characterId: arguments as int);

  const CharacterCardScreen({Key? key, required this.characterId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          final model = state.selected(characterId);

          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                stretch: true,
                elevation: 4,
                pinned: true,
                expandedHeight: MediaQuery.of(context).size.height / 4,
                title: Text(
                  model.name,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
                flexibleSpace: Stack(
                  children: [
                    Hero(
                      tag: model.id,
                      transitionOnUserGestures: true,
                      child: Material(
                        child: CachedNetworkImage(
                          imageUrl: model.image,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Center(
                            child: Icon(Icons.offline_bolt_outlined),
                          ),
                          imageBuilder: (context, provider) => Ink.image(
                            image: provider,
                            fit: BoxFit.cover,
                          ),
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                              value: downloadProgress.progress,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.black26,
                      height: kToolbarHeight * 2,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: FavoriteButtonWidget(characterModel: model),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    _CharacterCard(
                        title: 'Species', description: model.species),
                    _CharacterCard(
                        title: 'Gender', description: model.gender.name),
                    _CharacterCard(
                        title: 'Status', description: model.status.name),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CharacterCard extends StatelessWidget {
  final String title;
  final String description;

  const _CharacterCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Chip(
              label: Text(
                description,
                style: Theme.of(context).textTheme.caption,
              ),
            )
          ],
        ),
      ),
    );
  }
}
