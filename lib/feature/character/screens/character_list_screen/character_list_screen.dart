import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/assets/theme/app_color.dart';
import 'package:rick_and_morty_app/feature/character/domain/entity/character.dart';
import 'package:rick_and_morty_app/feature/character/screens/character_list_screen/character_list_screen_widget_model.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

/// CharacterList screens.
@immutable
class CharacterListScreen
    extends ElementaryWidget<ICharacterListScreenWidgetModel> {
  /// Create an instance [CharacterListScreen].
  const CharacterListScreen({
    Key? key,
    WidgetModelFactory wmFactory = characterListScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ICharacterListScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'character_list_title'.tr(),
        ),
      ),
      body: EntityStateNotifierBuilder<List<Character>>(
        listenableEntityState: wm.characterListState,
        builder: (_, characters) {
          return _CounterGrid(
            characters: characters ?? [],
            cardTextStyle: wm.cardTextStyle,
            characterListController: wm.characterListController,
          );
        },
      ),
    );
  }
}

@immutable
class _CounterGrid extends StatelessWidget {
  const _CounterGrid({
    required this.characters,
    required this.cardTextStyle,
    required this.characterListController,
    Key? key,
  }) : super(key: key);

  final List<Character> characters;
  final TextStyle cardTextStyle;
  final ScrollController characterListController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: characterListController,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      itemCount: characters.isNotEmpty ? characters.length : 10,
      cacheExtent: 200,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (_, index) {
        if (characters.isEmpty) {
          return const _ShimmerCard();
        }

        return _CharacterCard(
          character: characters[index],
          cardTextStyle: cardTextStyle,
        );
      },
    );
  }
}

@immutable
class _CharacterCard extends StatelessWidget {
  const _CharacterCard({
    required this.character,
    required this.cardTextStyle,
    Key? key,
  }) : super(key: key);

  final Character character;
  final TextStyle cardTextStyle;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(
              character.image,
              cacheKey: character.id.toString(),
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: ColoredBox(
              color: AppColor.darkBlue.withOpacity(0.6),
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  character.name,
                  style: cardTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

@immutable
class _ShimmerCard extends StatelessWidget {
  const _ShimmerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.hardEdge,
      child: Shimmer(
        duration: const Duration(seconds: 2),
        interval: const Duration(seconds: 1),
        colorOpacity: 1,
        child: ColoredBox(
          color: AppColor.primaryBlue.withOpacity(0.1),
        ),
      ),
    );
  }
}
