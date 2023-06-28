import 'dart:math';

import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/characters_bloc.dart';
import 'package:morty_api/characters/model/character_filter.dart';
import 'package:morty_api/network/model/characters/character_response.dart';

import 'text_field_widget.dart';

class FilterActionWidget extends StatelessWidget {
  const FilterActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (internalContext) => BlocProvider.value(
          value: context.read<CharactersBloc>(),
          child: Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    'Filter characters',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Divider(),
                  const _FilterFormWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
      icon: const Icon(Icons.filter_alt_outlined),
    );
  }
}

class _FilterFormWidget extends StatefulWidget {
  const _FilterFormWidget();

  @override
  State<_FilterFormWidget> createState() => _FilterFormWidgetState();
}

class _FilterFormWidgetState extends State<_FilterFormWidget> {
  final _formKey = GlobalKey<FormState>();
  CharacterFilter _characterFilter = const CharacterFilter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        final model = state.characters.pageModel;
        _characterFilter = state.filter ?? _characterFilter;
        Fimber.d('Filter: $_characterFilter, model: $model');

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            autovalidateMode: AutovalidateMode.disabled,
            key: _formKey,
            child: AutofillGroup(
              child: ListView(
                shrinkWrap: true,
                children: [
                  TextFieldWidget(
                    initialValue: _characterFilter.name ?? '',
                    hintLabel: 'Name',
                    onChanged: (value) => _updateFilters(name: value),
                  ),
                  TextFieldWidget(
                    initialValue: _characterFilter.race ?? '',
                    hintLabel: 'Race',
                    onChanged: (value) => _updateFilters(race: value),
                  ),
                  DropdownButtonFormField(
                    decoration:
                        const InputDecoration(labelText: 'Select Gender'),
                    value: _characterFilter.gender?.toLowerCase() ?? '',
                    items: _genderItems,
                    onChanged: (String? value) {
                      _updateFilters(gender: value);
                    },
                  ),
                  DropdownButtonFormField(
                    decoration:
                        const InputDecoration(labelText: 'Select Status'),
                    value: _characterFilter.status?.toLowerCase() ?? '',
                    items: _statusItems,
                    onChanged: (String? value) {
                      _updateFilters(status: value);
                    },
                  ),
                  const SizedBox(height: 16),
                  Text('Total characters: ${max(model.pages, model.count)}'),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: _onSubmit,
                    child: const Text('Clear filters'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onSubmit() {
    setState(() => _characterFilter = const CharacterFilter());

    context
        .read<CharactersBloc>()
        .add(CharactersEvent.filterCharacters(filter: _characterFilter));

    Navigator.of(context).pop();
  }

  void _updateFilters({
    String? name,
    String? gender,
    String? status,
    String? race,
  }) {
    _characterFilter = _characterFilter.copyWith(
      name: name ?? _characterFilter.name,
      gender: gender ?? _characterFilter.gender,
      status: status ?? _characterFilter.status,
      race: race ?? _characterFilter.race,
    );

    context
        .read<CharactersBloc>()
        .add(CharactersEvent.filterCharacters(filter: _characterFilter));
  }

  final _statusItems = CharacterStatus.values
      .map((e) => DropdownMenuItem(value: e.name, child: Text(e.name)))
      .toList()
    ..add(_anyItem);

  final _genderItems = GenderType.values
      .map((e) => DropdownMenuItem(value: e.name, child: Text(e.name)))
      .toList()
    ..add(_anyItem);
}

const _anyItem = DropdownMenuItem(value: '', child: Text('any'));
