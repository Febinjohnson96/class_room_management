import 'package:class_room_management/presentation/home/bloc/homescreen_bloc.dart';
import 'package:class_room_management/presentation/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomescreenBloc>(
      create: (context) => HomescreenBloc()..add(const HomescreenEvent.onLoad()),
      child: const HomeScreen(),
    );
  }
}
