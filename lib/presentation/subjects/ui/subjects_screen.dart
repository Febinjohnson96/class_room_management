import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/core/config/route_name.dart';
import 'package:class_room_management/presentation/subjects/bloc/subject_bloc.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({super.key});

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
            "Subjects",
            style: AppTypography.sfPro22w4700,
          ),
          BlocBuilder<SubjectBloc, SubjectState>(builder: (context, state) {
            return Expanded(
              child: state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                onLoadState: (subjectList) => ListView.separated(
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      context.push(RouteName.subjectDetails,
                          extra: subjectList[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFD1D1D1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(subjectList[index].name ?? '',
                                    style: AppTypography.sfPro17w600),
                                Text(
                                  subjectList[index].teacherName ?? '',
                                )
                              ],
                            ),
                            const Spacer(),
                            Text("${subjectList[index].credits}\ncredit",
                                textAlign: TextAlign.center,
                                style: AppTypography.sfPro17w600),
                          ],
                        ),
                      ),
                    ),
                  ),
                  itemCount: subjectList.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
                ),
              ),
            );
          })
        ],
      ),
    );
  }
}
