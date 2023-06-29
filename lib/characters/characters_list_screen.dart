import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/characters_bloc.dart';
import 'package:morty_api/characters/refreshable_characters_body.dart';
import 'package:morty_api/characters/widgets/about_info_action_widget.dart';
import 'package:morty_api/characters/widgets/characters_error.dart';
import 'package:morty_api/characters/widgets/filter_action_widget.dart';

class CharactersListScreen extends StatelessWidget {
  static const path = '/characters_list';

  static get(Object? arguments) =>
      (BuildContext context) => const CharactersListScreen();

  const CharactersListScreen({Key? key}) : super(key: key);

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
      body: const _CharactersListBody(),
    );
  }
}

class _CharactersListBody extends StatelessWidget {
  const _CharactersListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CharactersBloc, CharactersState>(
      listener: (context, state) => state.mapOrNull(
        error: (error) => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              error.message,
              style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
            ),
            backgroundColor: Theme.of(context).errorColor,
            duration: const Duration(seconds: 3),
          ),
        ),
      ),
      builder: (context, state) => state.maybeMap(
        loading: (_) => const _PhotosListLoading(),
        error: (error) => error.characters.characters.isEmpty
            ? CharactersError(
                message: error.message,
                errorCode: error.errorCode,
              )
            : RefreshableCharactersBody(charactersData: error.characters),
        orElse: () => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: RefreshableCharactersBody(charactersData: state.characters),
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
