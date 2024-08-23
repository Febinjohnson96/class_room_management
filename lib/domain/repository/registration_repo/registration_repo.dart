import 'package:class_room_management/domain/model/registration_model/registration_model.dart';

abstract class RegistrationRepo {
  Future<List<RegistrationModel>> getregistrationList();
}
