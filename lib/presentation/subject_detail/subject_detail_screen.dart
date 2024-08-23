import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/gen/assets.gen.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SubjectDetailScreen extends StatelessWidget {
  const SubjectDetailScreen({super.key, required this.subject});
  final SubjectModel subject;

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
            Assets.images.subjectDetail.subject.path,
            height: 200.h,
            width: 200.w,
          ),
          SizedBox(
            height: 20.h,
          ),
          Column(
            children: [
              Text(
                subject.name ?? '',
                style: AppTypography.sfPro22w4700,
              ),
              Text(
                subject.teacherName ?? '',
              ),
              Text(
                "Credit : ${subject.credits}",
                style: AppTypography.sfPro17w600,
              ),
            ],
          )
        ],
      ),
    );
  }
}
