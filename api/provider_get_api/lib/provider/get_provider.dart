import 'package:flutter/cupertino.dart';
import 'package:provider_get_api/api/get_data_provider.dart';
import 'package:provider_get_api/model/api_model.dart';

class GetProvider extends ChangeNotifier {
  GetApi getApi = GetApi();
  CustomApiModel<ApiModel> customModel = CustomApiModel<ApiModel>();

  Future<CustomApiModel<ApiModel>> getApiProvider() async {
     customModel =await getApi.fetchData();
    notifyListeners();
    return customModel;
  }
}
