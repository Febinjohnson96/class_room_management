import 'package:class_room_management/core/config/route_name.dart';
import 'package:class_room_management/presentation/classroom/class_room_ui.dart';
import 'package:class_room_management/presentation/home/home_ui.dart';
import 'package:class_room_management/presentation/registration/registration_ui.dart';
import 'package:class_room_management/presentation/student/student_ui.dart';
import 'package:class_room_management/presentation/subjects/subjects_screen_ui.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRoute = GoRouter(
  routes: [
    GoRoute(
      path: RouteName.home,
      builder: (context, state) => const HomeUI(),
    ),
    GoRoute(
        path: RouteName.classroom,
        builder: (context, state) => const ClassRoomUi()),
    GoRoute(
        path: RouteName.registration,
        builder: (context, state) => const RegistrationUi()),
    GoRoute(
        path: RouteName.student,
        builder: (context, state) => const StudentUi()),
    GoRoute(
        path: RouteName.subjectscreen,
        builder: (context, state) => const SubjectsScreenUi()),
  ],
);
