import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task1/constant/string.dart';
import 'package:task1/model/api_model.dart';

class ApiCalling {
  //^ post
  Future<CustomApiResponse<ApiModel>> apiPost(
      {required String email, required String password}) async {
    final postData = {
      "email": email,
      "password": password,
    };
    final response = await http.post(Uri.parse(Strings.url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode(postData));

    if (response.statusCode == 200) {
      return CustomApiResponse<ApiModel>(
        data: ApiModel.fromJson(jsonDecode(response.body)),
        statusCode: 200,
      );
    } else {
      return CustomApiResponse<ApiModel>(statusCode: 400);
    }
  }

}
