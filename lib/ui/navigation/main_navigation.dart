import 'package:flutter/material.dart';
import 'package:learn_app/ui/screens/placeholder_screen.dart';
import 'package:learn_app/ui/screens/user_profile.dart';

abstract class NavigationRouts {
  static const String settingsScreen = '/settings';
  static const String placeholderScreen = '/settings/placeholder';
}

class MainNavigation {
  Map<String, WidgetBuilder> routes = {
    NavigationRouts.settingsScreen: (context) => const SettingsScreen(),
    NavigationRouts.placeholderScreen: (context) => const PlaceholderScreen(),
  };
}
