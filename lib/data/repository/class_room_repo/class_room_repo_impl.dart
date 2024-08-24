import 'package:class_room_management/core/config/constants.dart';
import 'package:class_room_management/domain/model/classroom/class_room_model.dart';
import 'package:class_room_management/domain/repository/class_room_repo/class_room_repo.dart';
import 'package:class_room_management/managers/api_helper.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';

class ClassRoomRepoImpl implements ClassRoomRepo {
  final ApiHelper _apiHelper;
  ClassRoomRepoImpl(this._apiHelper);
  @override
  Future<List<ClassRoomModel>> getClassRoomList() async {
    Map<String, String> params = {
      'api_key': AppConstants.apiKey,
    };
    final response =
        await _apiHelper.get(endpoint: "/classrooms/", params: params);
    List<ClassRoomModel> classRooms = List<ClassRoomModel>.from(
        response['classrooms'].map((e) => ClassRoomModel.fromJson(e))).toList();
    AppLogger.debuglog(response.toString());
    return classRooms;
  }
}
