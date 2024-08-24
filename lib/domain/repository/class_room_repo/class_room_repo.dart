import 'package:class_room_management/domain/model/classroom/class_room_model.dart';

abstract class ClassRoomRepo {
  Future<List<ClassRoomModel>> getClassRoomList();
}
