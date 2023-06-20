import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:morty_api/characters/model/character_model.dart';

class PhotosDetailsScreen extends StatelessWidget {
  static const path = '/photo_details';
  final CharacterModel characterModel;

  static get(Object? arguments) => (BuildContext context) =>
      PhotosDetailsScreen(characterModel: arguments as CharacterModel);

  const PhotosDetailsScreen({Key? key, required this.characterModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(characterModel.name),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Hero(
        tag: characterModel.id,
        transitionOnUserGestures: true,
        child: Material(
          child: CachedNetworkImage(
            imageUrl: characterModel.image,
            fit: BoxFit.fill,
            imageBuilder: (context, provider) => Ink.image(
              image: provider,
              fit: BoxFit.cover,
            ),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child:
                  CircularProgressIndicator(value: downloadProgress.progress),
            ),
          ),
        ),
      ),
    );
  }
}
