import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/assets/icon/rick_and_morty_icons.dart';
import 'package:rick_and_morty_app/navigation/app_router.dart';

@immutable
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CharacterTab(),
      ],
      builder: (_, child, __) {
        return child;
      },
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(RickAndMortyIcons.rickAndMorty),
              label: 'character_tab'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(RickAndMortyIcons.location),
              label: 'location_tab'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.local_movies_outlined),
              label: 'episode_tab'.tr(),
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings_outlined),
              label: 'setting_tab'.tr(),
            ),
          ],
        );
      },
    );
  }
}
