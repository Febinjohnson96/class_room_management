import 'package:class_room_management/injector.dart';
import 'package:class_room_management/presentation/classroom/bloc/class_room_bloc.dart';
import 'package:class_room_management/presentation/classroom/ui/class_room_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClassRoomUi extends StatelessWidget {
  const ClassRoomUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ClassRoomBloc>(
      create: (context) => ClassRoomBloc(classRoomRepo: injector())
        ..add(const ClassRoomEvent.onLoad()),
      child: const ClassRoomScreen(),
    );
  }
}
