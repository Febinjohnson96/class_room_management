import 'package:class_room_management/injector.dart';
import 'package:class_room_management/presentation/subjects/bloc/subject_bloc.dart';
import 'package:class_room_management/presentation/subjects/ui/subjects_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SubjectUi extends StatelessWidget {
  const SubjectUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SubjectBloc>(
      create: (context) => SubjectBloc(subjectRepo: injector())
        ..add(const SubjectEvent.onLoad()),
      child: const SubjectsScreen(),
    );
  }
}
