import 'package:class_room_management/core/config/constants.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/domain/repository/subject_repo/subject_repo.dart';
import 'package:class_room_management/managers/api_helper.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';

class SubjectRepoImpl implements SubjectRepo {
  final ApiHelper _apiHelper;
  SubjectRepoImpl(this._apiHelper);
  @override
  Future<List<SubjectModel>> getSubjectList() async {
    Map<String, String> params = {
      'api_key': AppConstants.apiKey,
    };
    final response =
        await _apiHelper.get(endpoint: "/subjects/", params: params);
    List<SubjectModel> subjectList = List<SubjectModel>.from(
        response['subjects'].map((e) => SubjectModel.fromJson(e))).toList();
    AppLogger.debuglog(response.toString());
    return subjectList;
  }
}
