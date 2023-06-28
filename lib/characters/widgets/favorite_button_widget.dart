import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/characters_bloc.dart';
import 'package:morty_api/characters/model/character_model.dart';

class FavoriteButtonWidget extends StatelessWidget {
  final CharacterModel characterModel;

  const FavoriteButtonWidget({super.key, required this.characterModel});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => _onFavoritePressed(context),
      icon: const Icon(Icons.favorite_outline),
      selectedIcon: const Icon(Icons.favorite, color: Colors.red),
      isSelected: characterModel.isFavorite,
    );
  }

  void _onFavoritePressed(BuildContext context) {
    Fimber.d('Press :$characterModel');
    context
        .read<CharactersBloc>()
        .add(CharactersEvent.updateFavorite(characterModel));
  }
}
