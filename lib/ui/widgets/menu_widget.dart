import 'package:flutter/material.dart';
import 'package:learn_app/ui/theme/menu_widget_style.dart';

class MenuWidget extends StatelessWidget {
  final MenuWidgetStyle? style;
  final List<MenuWidgetItem> items;

  const MenuWidget({
    super.key,
    this.style,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).extension<MenuWidgetStyle>()!;

    final borderRadius = style?.borderRadius ?? defaultStyle.borderRadius;
    final backgroundColor =
        style?.backgroundColor ?? defaultStyle.backgroundColor;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      width: double.infinity,
      child: Column(
        children: items,
      ),
    );
  }
}

class MenuWidgetItem extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final VoidCallback? onTap;

  const MenuWidgetItem({
    super.key,
    this.leading,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (leading != null) ...[
              leading!,
              const SizedBox(width: 15),
            ],
            title,
            const Spacer(),
            const Icon(Icons.chevron_right_sharp),
          ],
        ),
      ),
    );
  }
}
