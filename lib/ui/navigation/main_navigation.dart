import 'package:flutter/material.dart';
import 'package:learn_app/ui/screens/chats_creen.dart';
import 'package:learn_app/ui/screens/placeholder_screen.dart';
import 'package:learn_app/ui/screens/user_profile.dart';

abstract class NavigationRouts {
  static const String settingsScreen = '/settings';
  static const String placeholderScreen = '/settings/placeholder';
  static const String favorites = '/settings/favorites';
  static const String calls = '/settings/calls';
  static const String devices = '/settings/devices';
  static const String folderWithChats = '/settings/folderWithChats';
}

class MainNavigation {
  Map<String, WidgetBuilder> routes = {
    NavigationRouts.settingsScreen: (context) => const SettingsScreen(),
    NavigationRouts.placeholderScreen: (context) => const PlaceholderScreen(),
    NavigationRouts.favorites: (context) => const ChatScreen(),
    NavigationRouts.calls: (context) => const CallsSreen(),
    NavigationRouts.devices: (context) => const DevicesSreen(),
    NavigationRouts.folderWithChats: (context) => const FolderWithChatsSreen(),
  };
}
