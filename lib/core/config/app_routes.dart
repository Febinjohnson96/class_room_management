import 'package:class_room_management/presentation/home/ui/home_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRoute = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
