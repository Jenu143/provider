import 'package:flutter/cupertino.dart';
import 'package:task1/model/api_model.dart';
import 'package:task1/APi/api_calling.dart';

class LoginApiProvider extends ChangeNotifier {
  ApiCalling apiCall = ApiCalling();

  Future<CustomApiResponse<ApiModel>> apiProvider(
      {required String email, required String password}) async {
    final response = await apiCall.apiPost(email: email, password: password);
    notifyListeners();
    return response;
  }
}
