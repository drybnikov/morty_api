import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/photos_bloc.dart';
import 'package:morty_api/network/model/characters/page_model.dart';

class FilterActionWidget extends StatelessWidget {
  const FilterActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showCupertinoModalPopup(
        context: context,
        builder: (internalContext) => BlocProvider.value(
          value: context.read<PhotosBloc>(),
          child: CupertinoActionSheet(
            title: const Text('Set number of images per page'),
            message: const Text('Select images number'),
            actions: <CupertinoActionSheetAction>[
              CupertinoActionSheetAction(
                  onPressed: () => Navigator.pop(internalContext),
                  child: const Material(
                    color: Colors.transparent,
                    child: PageLimitSliderWidget(),
                  )),
              CupertinoActionSheetAction(
                isDestructiveAction: true,
                onPressed: () => Navigator.pop(internalContext),
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
      icon: const Icon(Icons.filter_alt_outlined),
    );
  }
}

class PageLimitSliderWidget extends StatelessWidget {
  const PageLimitSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotosBloc, PhotosState>(
      builder: (_, state) {
        final currentSliderValue = state.characters.pageModel.pages.toDouble();

        return Slider(
          value: currentSliderValue,
          max: 100,
          divisions: 20,
          label: currentSliderValue.round().toString(),
          onChanged: (value) =>
              _onChangeLimit(context, state.characters.pageModel, value),
        );
      },
    );
  }

  void _onChangeLimit(BuildContext context, PageModel model, double newValue) {
    context.read<PhotosBloc>().add(
          PhotosEvent.fetchPhotos(
              pageModel: model.copyWith(pages: newValue.toInt())),
        );
  }
}
