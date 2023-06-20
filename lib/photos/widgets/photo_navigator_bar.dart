import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/model/characters/page_model.dart';
import 'package:morty_api/photos/bloc/photos_bloc.dart';

class PhotoNavigationWidget extends StatelessWidget {
  final PageModel pageModel;

  const PhotoNavigationWidget({super.key, required this.pageModel});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      InputChip(
        avatar: const Icon(Icons.navigate_before),
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
    context.read<PhotosBloc>().add(const PhotosEvent.getPrevPage());
  }

  void _onNextClick(BuildContext context) {
    context.read<PhotosBloc>().add(const PhotosEvent.getNextPage());
  }
}
