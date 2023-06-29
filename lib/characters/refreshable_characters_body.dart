import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/archery_header.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/characters/widgets/characters_grid_widget.dart';

import 'bloc/characters_bloc.dart';

class RefreshableCharactersBody extends StatefulWidget {
  final CharactersData charactersData;

  const RefreshableCharactersBody({super.key, required this.charactersData});

  @override
  State<RefreshableCharactersBody> createState() =>
      _RefreshableCharactersBodyState();
}

class _RefreshableCharactersBodyState extends State<RefreshableCharactersBody> {
  late EasyRefreshController _controller;

  @override
  void initState() {
    super.initState();
    _controller = EasyRefreshController(
      controlFinishRefresh: true,
      controlFinishLoad: true,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      controller: _controller,
      header: const ArcheryHeader(
        position: IndicatorPosition.locator,
        processedDuration: Duration(seconds: 1),
      ),
      onRefresh: () {
        context.read<CharactersBloc>().add(CharactersEvent.fetchCharacters(
              pageModel: widget.charactersData.pageModel,
              forceRefresh: true,
            ));

        if (!mounted) {
          return;
        }
        _controller.finishRefresh();
        _controller.resetFooter();
      },
      child: CharactersGridWidget(
        charactersModel: widget.charactersData,
        key: ValueKey(widget.charactersData.pageModel.current),
      ),
    );
  }
}
