import 'package:class_room_management/domain/model/classroom/class_room_model.dart';
import 'package:class_room_management/injector.dart';
import 'package:class_room_management/presentation/classroom_detail/bloc/class_room_detail_bloc.dart';
import 'package:class_room_management/presentation/classroom_detail/ui/classroom_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassroomDetailUi extends StatelessWidget {
  const ClassroomDetailUi({super.key, required this.classRoom});
  final ClassRoomModel classRoom;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClassRoomDetailBloc>(
      create: (context) =>
          ClassRoomDetailBloc(subjectRepo: injector(), classRoom: classRoom)
            ..add(const ClassRoomDetailEvent.onLoad()),
      child: ClassroomDetailsScreen(
        classRoom: classRoom,
      ),
    );
  }
}
