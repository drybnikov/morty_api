import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/characters/widgets/favorite_button_widget.dart';
import 'package:morty_api/characters/widgets/photo_navigator_bar.dart';

import '../character_card_screen.dart';

class PhotosGridWidget extends StatelessWidget {
  final CharactersData charactersModel;

  const PhotosGridWidget({Key? key, required this.charactersModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          flexibleSpace:
              PhotoNavigationWidget(pageModel: charactersModel.pageModel),
          floating: true,
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final cardItem = charactersModel.characters[index];

              return _PhotoCardItem(cardItem: cardItem);
            },
            childCount: charactersModel.characters.length,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: PhotoNavigationWidget(pageModel: charactersModel.pageModel),
          ),
        ),
      ],
    );
  }
}

class _PhotoCardItem extends StatelessWidget {
  final CharacterModel cardItem;

  const _PhotoCardItem({Key? key, required this.cardItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: cardItem.id,
              transitionOnUserGestures: true,
              child: _MaterialInkImage(
                onImageTap: () => Navigator.of(context).pushNamed(
                  CharacterCardScreen.path,
                  arguments: cardItem.id,
                ),
                imageUrl: cardItem.image,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.black26,
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        cardItem.name,
                        maxLines: 1,
                        style: TextStyle(
                            color: Theme.of(context).cardColor,
                            shadows: const [Shadow(offset: Offset(1, 1))]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Chip(
                        label: Text(
                      cardItem.species,
                      style: Theme.of(context).textTheme.bodySmall,
                    )),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FavoriteButtonWidget(characterModel: cardItem),
          ),
        ],
      ),
    );
  }
}

class _MaterialInkImage extends StatelessWidget {
  final VoidCallback? onImageTap;
  final String imageUrl;

  const _MaterialInkImage({Key? key, this.onImageTap, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(4)),
      clipBehavior: Clip.hardEdge,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        imageBuilder: (context, provider) => Ink.image(
          image: provider,
          fit: BoxFit.cover,
          child: InkWell(onTap: onImageTap),
        ),
      ),
    );
  }
}
