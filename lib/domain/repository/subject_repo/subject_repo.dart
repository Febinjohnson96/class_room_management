import 'package:class_room_management/domain/model/subject_model/subject_model.dart';

abstract class SubjectRepo {
  Future<List<SubjectModel>> getSubjectList();
}
