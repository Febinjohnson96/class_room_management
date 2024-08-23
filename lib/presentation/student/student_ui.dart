import 'package:class_room_management/injector.dart';
import 'package:class_room_management/presentation/student/bloc/student_bloc.dart';
import 'package:class_room_management/presentation/student/ui/student_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StudentUi extends StatelessWidget {
  const StudentUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StudentBloc>(
      create: (context) => StudentBloc(studentRepo: injector())
        ..add(const StudentEvent.onLoad()),
      child: const StudentScreen(),
    );
  }
}
