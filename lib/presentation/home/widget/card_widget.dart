import 'package:class_room_management/core/config/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key, required this.title, required this.iconPath, required this.color, this.callback,
  });

  final String title;
  final String iconPath;
  final Color color;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callback?.call(),
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(iconPath),
            Text(
              title,
              style: AppTypography.sfPro17w600,
            ),
          ],
        ),
      ),
    );
  }
}
