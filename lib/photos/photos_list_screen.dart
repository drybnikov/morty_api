import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/photos/bloc/photos_bloc.dart';
import 'package:morty_api/photos/widgets/about_info_action_widget.dart';
import 'package:morty_api/photos/widgets/characters_error.dart';
import 'package:morty_api/photos/widgets/filter_action_widget.dart';
import 'package:morty_api/photos/widgets/photos_grid_widget.dart';

class PhotosListScreen extends StatelessWidget {
  static const path = '/photos_list';

  static get(Object? arguments) =>
      (BuildContext context) => const PhotosListScreen();

  const PhotosListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Rick and Morty'),
        elevation: 0,
        actions: const [
          FilterActionWidget(),
          AboutInfoActionWidget(),
        ],
      ),
      body: const _PhotosListBody(),
    );
  }
}

class _PhotosListBody extends StatelessWidget {
  const _PhotosListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotosBloc, PhotosState>(
      builder: (context, state) => state.maybeMap(
        loading: (_) => const _PhotosListLoading(),
        error: (error) => error.characters.characters.isEmpty
            ? CharactersError(
                message: error.message,
                errorCode: error.errorCode,
              )
            : PhotosGridWidget(
                charactersResponse: error.characters,
                key: ValueKey(state.characters.pageModel.current),
              ),
        orElse: () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: PhotosGridWidget(
            charactersResponse: state.characters,
            key: ValueKey(state.characters.pageModel.current),
          ),
        ),
      ),
    );
  }
}

class _PhotosListLoading extends StatelessWidget {
  const _PhotosListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
