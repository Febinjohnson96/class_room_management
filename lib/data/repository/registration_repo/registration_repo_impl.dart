import 'package:class_room_management/core/config/constants.dart';
import 'package:class_room_management/domain/model/registration_model/registration_model.dart';
import 'package:class_room_management/domain/repository/registration_repo/registration_repo.dart';
import 'package:class_room_management/managers/api_helper.dart';
import 'package:class_room_management/utils/logger/app_logger.dart';

class RegistrationRepoImpl implements RegistrationRepo {
  final ApiHelper _apiHelper;
  RegistrationRepoImpl(this._apiHelper);
  @override
  Future<List<RegistrationModel>> getregistrationList() async {
    Map<String, String> params = {
      'api_key': AppConstants.apiKey,
    };
    final response =
        await _apiHelper.get(endpoint: "/registration/", params: params);

    List<RegistrationModel> registrationList = List<RegistrationModel>.from(
            response['registrations'].map((e) => RegistrationModel.fromJson(e)))
        .toList();
     AppLogger.debuglog(response.toString());   
    return registrationList;
  }
}
