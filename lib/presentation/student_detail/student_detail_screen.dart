import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/domain/model/student/student_model.dart';
import 'package:class_room_management/gen/assets.gen.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentDetailScreen extends StatelessWidget {
  const StudentDetailScreen({super.key, required this.student});
  final StudentModel student;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
            height: 50.h,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              ],
            ),
          ),
          Text(
            "Student Detail",
            style: AppTypography.sfPro22w4700,
          ),
          SizedBox(
            height: 20.h,
          ),
          Image.asset(
            Assets.images.studentDetail.student.path,
            height: 200.h,
            width: 200.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Text(
                student.name ?? '',
                style: AppTypography.sfPro22w4700,
              ),
              Text(
                "Age : ${student.age}",
                style: AppTypography.sfPro17w600,
              ),
              Text(
                student.email ?? '',
              ),
            ],
          )
        ],
      ),
    );
  }
}
