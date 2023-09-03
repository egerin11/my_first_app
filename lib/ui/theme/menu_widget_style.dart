import 'package:flutter/material.dart';

class MenuWidgetStyle extends ThemeExtension<MenuWidgetStyle> {
  final BorderRadius borderRadius;
  final Color backgroundColor;

  const MenuWidgetStyle({
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.backgroundColor = Colors.grey,
  });

  @override
  MenuWidgetStyle copyWith({
    BorderRadius? borderRadius,
    Color? backgroundColor,
  }) =>
      MenuWidgetStyle(
        borderRadius: borderRadius ?? this.borderRadius,
        backgroundColor: backgroundColor ?? this.backgroundColor,
      );

  @override
  MenuWidgetStyle lerp(ThemeExtension<MenuWidgetStyle>? other, double t) {
    if (other is! MenuWidgetStyle) {
      return this;
    }

    return MenuWidgetStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t)!,
      borderRadius: BorderRadius.lerp(borderRadius, other.borderRadius, t)!,
    );
  }
}
