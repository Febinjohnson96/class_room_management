import 'package:class_room_management/core/config/route_name.dart';
import 'package:class_room_management/domain/model/student/student_model.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/presentation/classroom/class_room_ui.dart';
import 'package:class_room_management/presentation/home/home_ui.dart';
import 'package:class_room_management/presentation/registration/registration_ui.dart';
import 'package:class_room_management/presentation/student/student_ui.dart';
import 'package:class_room_management/presentation/student_detail/student_detail_screen.dart';
import 'package:class_room_management/presentation/subject_detail/subject_detail_screen.dart';
import 'package:class_room_management/presentation/subjects/subject_ui.dart';
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
        builder: (context, state) => const SubjectUi()),
    GoRoute(
        path: RouteName.studentDetails,
        builder: (context, state) {
          final student = state.extra as StudentModel;
          return StudentDetailScreen(student: student);
        }),
    GoRoute(
      path: RouteName.subjectDetails,
      builder: (context, state) {
        final subject = state.extra as SubjectModel;
        return SubjectDetailScreen(subject: subject);
      },
    ),
  ],
);
