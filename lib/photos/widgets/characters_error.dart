import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/photos/bloc/photos_bloc.dart';

class CharactersError extends StatelessWidget {
  final String message;
  final String? errorCode;

  const CharactersError({Key? key, required this.message, this.errorCode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const SizedBox(height: 32),
        Text(
          'Ups some `$errorCode` error was happens',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        const SizedBox(height: 16),
        Text(
          message,
          maxLines: 10,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 32),
        ElevatedButton(
          onPressed: () => _onRetry(context),
          child: const Text('Retry'),
        )
      ]),
    );
  }

  void _onRetry(BuildContext context) {
    final photosBloc = context.read<PhotosBloc>();

    photosBloc.add(
      PhotosEvent.fetchPhotos(
        pageModel: photosBloc.state.characters.pageModel,
      ),
    );
  }
}
