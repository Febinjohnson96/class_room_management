import 'package:class_room_management/injector.dart';
import 'package:class_room_management/presentation/registration/bloc/registration_bloc.dart';
import 'package:class_room_management/presentation/registration/ui/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationUi extends StatelessWidget {
  const RegistrationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegistrationBloc>(
      create: (context) => RegistrationBloc(registrationRepo: injector())
        ..add(const RegistrationEvent.onLoad()),
      child: const RegistrationScreen(),
    );
  }
}
