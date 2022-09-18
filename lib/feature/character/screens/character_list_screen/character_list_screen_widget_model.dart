import 'dart:collection';

import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rick_and_morty_app/assets/theme/app_color.dart';
import 'package:rick_and_morty_app/assets/theme/app_typography.dart';
import 'package:rick_and_morty_app/feature/character/data/exception/character_list_exception.dart';
import 'package:rick_and_morty_app/feature/character/data/repository/character_repository.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen_model.dart';
import 'package:rick_and_morty_app/navigation/app_router.dart';
import 'package:rick_and_morty_app/navigation/snack_bar_messenger.dart';

/// Factory for [CharacterListScreenWidgetModel].
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
    themeWrapper: context.read<ThemeWrapper>(),
  );
}

/// Widget Model for [CharacterListScreen].
class CharacterListScreenWidgetModel
    extends WidgetModel<CharacterListScreen, CharacterListScreenModel>
    implements ICharacterListScreenWidgetModel {
  /// Create an instance [CharacterListScreenWidgetModel].
  CharacterListScreenWidgetModel({
    required CharacterListScreenModel model,
    required AppRouter navigation,
    required ThemeWrapper themeWrapper,
  })  : _navigation = navigation,
        _themeWrapper = themeWrapper,
        super(model);

  final AppRouter _navigation;
  final ThemeWrapper _themeWrapper;
  final EntityStateNotifier<UnmodifiableListView<Character>>
      _characterListState = EntityStateNotifier();
  final ScrollController _characterListController = ScrollController();

  @override
  ListenableState<EntityState<UnmodifiableListView<Character>>>
      get characterListState => _characterListState;

  @override
  TextStyle get cardTextStyle =>
      _themeWrapper.getTextTheme(context).medium14.copyWith(
            color: AppColor.white,
          );

  @override
  ScrollController get characterListController => _characterListController;

  @override
  void initWidgetModel() {
    super.initWidgetModel();

    _loadCharacters();

    _characterListController.addListener(_updatePaginationData);
  }

  @override
  void dispose() {
    _characterListController.removeListener(_updatePaginationData);

    super.dispose();
  }

  @override
  void onErrorHandle(Object error) {
    super.onErrorHandle(error);

    if (error is CharacterListException) {
      context.showErrorSnackBar('При загрузке данных произошла ошибка');
    }
  }

  void _updatePaginationData() {
    if (_characterListController.position.pixels ==
        _characterListController.position.maxScrollExtent) {
      _loadCharacters();
    }
  }

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

/// Interface of [CharacterListScreenWidgetModel].
abstract class ICharacterListScreenWidgetModel extends IWidgetModel {
  ListenableState<EntityState<UnmodifiableListView<Character>>>
      get characterListState;

  TextStyle get cardTextStyle;

  ScrollController get characterListController;
}
