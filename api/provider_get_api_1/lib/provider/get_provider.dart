import 'package:flutter/cupertino.dart';
import 'package:provider_get_api_2/Api/get_api.dart';
import 'package:provider_get_api_2/model/api_model.dart';

class GetApiProvider extends ChangeNotifier {
  GetApi getApi = GetApi();
  CustomApiModel<ApiModel> customApiModel = CustomApiModel<ApiModel>();

  Future<CustomApiModel<ApiModel>> getApiProvider() async {
    customApiModel = await getApi.getApi();
    notifyListeners();
    return customApiModel;
  }
}
