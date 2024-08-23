import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/core/config/route_name.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClassRoomUi extends StatelessWidget {
  const ClassRoomUi({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppScaffold(
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: 50.h,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => context.go(RouteName.home),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              ],
            ),
          ),
          Text(
            "ClassRooms",
            style: AppTypography.sfPro22w4700,
          )
        ],
      ),
    );
  }
}
