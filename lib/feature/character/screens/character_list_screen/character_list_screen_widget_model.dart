import 'dart:collection';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_app/assets/theme/theme_context_extention.dart';
import 'package:rick_and_morty_app/feature/character/data/exception/character_list_exception.dart';
import 'package:rick_and_morty_app/feature/character/data/repository/character_repository.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen_model.dart';
import 'package:rick_and_morty_app/navigation/app_router.dart';
import 'package:rick_and_morty_app/navigation/snack_bar_messenger.dart';

CharacterListScreenWidgetModel characterListScreenWidgetModelFactory(
  BuildContext context,
) {
  final model = CharacterListScreenModel(
    errorHandler: context.read<ErrorHandler>(),
    repository: context.read<ICharacterRepository>(),
  );

  return CharacterListScreenWidgetModel(
    model: model,
    navigation: context.read<AppRouter>(),
  );
}

class CharacterListScreenWidgetModel
    extends WidgetModel<CharacterListScreen, CharacterListScreenModel>
    implements ICharacterListScreenWidgetModel {
  CharacterListScreenWidgetModel({
    required CharacterListScreenModel model,
    required AppRouter navigation,
  })  : _navigation = navigation,
        super(model);

  final AppRouter _navigation;
  final EntityStateNotifier<UnmodifiableListView<Character>>
      _characterListState = EntityStateNotifier();
  final ScrollController _characterListController = ScrollController();

  @override
  ListenableState<EntityState<UnmodifiableListView<Character>>>
      get characterListState => _characterListState;

  @override
  TextStyle get cardTextStyle => context.characterListTypography.cardTitle;

  @override
  ScrollController get characterListController => _characterListController;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    _loadCharacters();

    _characterListController.addListener(_updateCharacterData);
  }

  @override
  void dispose() {
    _characterListController.removeListener(_updateCharacterData);

    _characterListState.dispose();
    _characterListController.dispose();

    super.dispose();
  }

  @override
  void onErrorHandle(Object error) {
    super.onErrorHandle(error);

    if (error is CharacterListException) {
      context.showErrorSnackBar('При загрузке данных произошла ошибка');
    }
  }

  @override
  void openDetailCharacterScreen({
    required int id,
    required String image,
  }) {
    _navigation.push(
      CharacterRoute(
        id: id,
        image: image,
      ),
    );
  }

  /// Load more characters if scroll has reached end of page.
  void _updateCharacterData() {
    if (_characterListController.position.pixels ==
        _characterListController.position.maxScrollExtent) {
      _loadCharacters();
    }
  }

  /// Get actual characters data.
  Future<void> _loadCharacters() async {
    final previousData = _characterListState.value?.data;
    _characterListState.loading(previousData);
    try {
      final characters = await model.loadCharacters();
      _characterListState.content(characters);
    } on CharacterListException catch (exception) {
      _characterListState.error(exception, previousData);
    }
  }
}

abstract class ICharacterListScreenWidgetModel extends IWidgetModel {
  /// Return listenable state of characters data.
  ListenableState<EntityState<UnmodifiableListView<Character>>>
      get characterListState;

  /// Return text style for character card.
  TextStyle get cardTextStyle;

  /// Return scroll controller for characters list.
  ScrollController get characterListController;

  /// Navigate to character screen.
  void openDetailCharacterScreen({
    required int id,
    required String image,
  });
}
