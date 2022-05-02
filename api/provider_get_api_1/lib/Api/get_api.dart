import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:provider_get_api_2/contant/strings.dart';
import 'package:provider_get_api_2/model/api_model.dart';

class GetApi {
  Future<CustomApiModel<ApiModel>> getApi() async {
    final res = await http.get(Uri.parse(Strings.url));

    if (res.statusCode == 200) {
      return CustomApiModel(
        data: ApiModel.fromJson(jsonDecode(res.body)),
        status: 200,
      );
    } else {
      return CustomApiModel(status: 400);
    }
  }
}
