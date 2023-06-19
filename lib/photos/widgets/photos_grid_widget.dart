import 'package:cached_network_image/cached_network_image.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:morty_api/model/photos/character_response.dart';
import 'package:morty_api/photos/widgets/photo_navigator_bar.dart';

import '../photo_details_screen.dart';

class PhotosGridWidget extends StatelessWidget {
  final CharactersResponse charactersResponse;

  const PhotosGridWidget({Key? key, required this.charactersResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          flexibleSpace:
              PhotoNavigationWidget(pageModel: charactersResponse.pageModel),
          floating: true,
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              final cardItem = charactersResponse.characters[index];
              Fimber.d('build cardItem:$cardItem');

              return _PhotoCardItem(cardItem: cardItem);
            },
            childCount: charactersResponse.characters.length,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child:
                PhotoNavigationWidget(pageModel: charactersResponse.pageModel),
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
                  onImageTap: () => Navigator.of(context)
                      .pushNamed(PhotosDetailsScreen.path, arguments: cardItem),
                  imageUrl: cardItem.image),
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
                    Chip(label: Text(cardItem.species)),
                  ],
                ),
              ),
            ),
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
