import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:morty_api/characters/archery_header.dart';
import 'package:morty_api/characters/model/character_model.dart';
import 'package:morty_api/characters/widgets/characters_grid_widget.dart';

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
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 2));
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
