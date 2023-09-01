import 'package:flutter/material.dart';
import 'package:learn_app/ui/navigation/main_navigation.dart';
import 'package:learn_app/ui/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainNavigation mainNavigation = MainNavigation();

    return MaterialApp(
      theme: AppTheme.dark,
      initialRoute: NavigationRouts.settingsScreen,
      routes: mainNavigation.routes,
    );
  }
}
