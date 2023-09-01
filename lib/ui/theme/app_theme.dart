import 'package:flutter/material.dart';
import 'package:learn_app/ui/theme/menu_widget_style.dart';

abstract class AppTheme {
  static final dark = ThemeData(
    brightness: Brightness.dark,
    extensions: const {
      MenuWidgetStyle(
        backgroundColor: Colors.black,
      ),
    },
  );
}
