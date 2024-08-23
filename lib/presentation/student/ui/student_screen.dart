import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/core/config/route_name.dart';
import 'package:class_room_management/presentation/student/bloc/student_bloc.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudentScreen extends StatelessWidget {
  const StudentScreen({super.key});

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
            "Students",
            style: AppTypography.sfPro22w4700,
          ),
          SizedBox(
            height: 20.h,
          ),
          BlocBuilder<StudentBloc, StudentState>(builder: (context, state) {
            return Expanded(
              child: state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                onLoadState: (studentList) => ListView.separated(
                    itemBuilder: (context, index) => Container(
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
                                    Text(studentList[index].name ?? '',
                                        style: AppTypography.sfPro17w600),
                                    Text(
                                      studentList[index].email ?? '',
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Text("Age : ${studentList[index].age}",
                                    style: AppTypography.sfPro17w600),
                              ],
                            ),
                          ),
                        ),
                    itemCount: studentList.length,
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
