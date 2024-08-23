import 'package:class_room_management/data/repository/registration_repo/registration_repo_impl.dart';
import 'package:class_room_management/data/repository/student_repo/student_repo_impl.dart';
import 'package:class_room_management/domain/repository/registration_repo/registration_repo.dart';
import 'package:class_room_management/domain/repository/student_repo/student_repo.dart';
import 'package:class_room_management/managers/api_helper.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> initInjector() async {
  AppLogger.infolog("initializing injector");
  injector.registerLazySingleton<ApiHelper>(() => ApiHelper());
  injector.registerLazySingleton<RegistrationRepo>(
      () => RegistrationRepoImpl(injector()));
  injector
      .registerLazySingleton<StudentRepo>(() => StudentRepoImpl(injector()));
}
