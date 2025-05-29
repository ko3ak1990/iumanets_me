import 'package:flutter/scheduler.dart';
import 'package:iumanets_me/config/constants.dart';
import 'package:iumanets_me/pages/home_page.dart';
import 'package:iumanets_me/widgets/theme_inherited_widget.dart';
import 'package:flutter/material.dart';

import 'config/themes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    return ThemeSwitcherWidget(
      initialDarkModeOn: isDarkMode,
      child: const IUApp(),
    );
  }
}

class IUApp extends StatelessWidget {
  const IUApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.PROFILE_NAME,
      theme: ThemeSwitcher.of(context).isDarkModeOn
          ? darkTheme(context)
          : lightTheme(context),
      home: const HomePage(),
    );
  }
}
