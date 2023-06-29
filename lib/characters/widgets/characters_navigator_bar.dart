import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/characters_bloc.dart';
import 'package:morty_api/network/model/characters/page_model.dart';

class CharactersNavigationWidget extends StatelessWidget {
  final PageModel pageModel;

  const CharactersNavigationWidget({super.key, required this.pageModel});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      InputChip(
        avatar: Icon(
          Icons.navigate_before_outlined,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        label: const Text('prev'),
        onPressed: pageModel.prev != null ? () => _onPrevClick(context) : null,
      ),
      Chip(
          label: Text(
            'Page #${pageModel.current}',
            style: TextStyle(color: Theme.of(context).cardColor),
          ),
          backgroundColor: Colors.deepOrangeAccent),
      InputChip(
        deleteIcon: const Icon(Icons.navigate_next),
        label: const Text('next'),
        onPressed: pageModel.next != null ? () => _onNextClick(context) : null,
        onDeleted: pageModel.next != null ? () => _onNextClick(context) : null,
      ),
    ]);
  }

  void _onPrevClick(BuildContext context) {
    context.read<CharactersBloc>().add(const CharactersEvent.getPrevPage());
  }

  void _onNextClick(BuildContext context) {
    context.read<CharactersBloc>().add(const CharactersEvent.getNextPage());
  }
}
