import 'package:class_room_management/core/config/constants.dart';
import 'package:class_room_management/domain/model/student/student_model.dart';
import 'package:class_room_management/domain/repository/student_repo/student_repo.dart';
import 'package:class_room_management/managers/api_helper.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';

class StudentRepoImpl implements StudentRepo {
  final ApiHelper _apiHelper;
  StudentRepoImpl(this._apiHelper);
  @override
  Future<List<StudentModel>> getStudentList() async {
    Map<String, String> params = {
      'api_key': AppConstants.apiKey,
    };
    final response =
        await _apiHelper.get(endpoint: "/students/", params: params);
    List<StudentModel> studentList = List<StudentModel>.from(
        response['students'].map((e) => StudentModel.fromJson(e))).toList();
    AppLogger.debuglog(response.toString());
    return studentList;
  }
}
