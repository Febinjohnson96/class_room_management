import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello,",
            style: AppTypography.sfPro17w600,
          ),
          Text("Good Morning",
          style: AppTypography.sfPro22w400,
          )
        ],
      ),
    );
  }
}
