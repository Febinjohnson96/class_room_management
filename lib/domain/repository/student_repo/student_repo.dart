import 'package:class_room_management/domain/model/student/student_model.dart';

abstract class StudentRepo {
  Future<List<StudentModel>> getStudentList();
}
