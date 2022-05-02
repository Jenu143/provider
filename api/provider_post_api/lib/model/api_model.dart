class ApiModel {
  late String id;
  late String name;
  late String email;
  late String password;
  late int status;
  late int treePlanted;
  late int co2Reduced;
  late String lastAccess;
  late Social social;
  late String created;
  late String modified;
  late String token;

  ApiModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.status,
    required this.treePlanted,
    required this.co2Reduced,
    required this.lastAccess,
    required this.social,
    required this.created,
    required this.modified,
    required this.token,
  });

  ApiModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    password = json["password"];
    status = json["status"];
    treePlanted = json["treePlanted"];
    co2Reduced = json["co2Reduced"];
    lastAccess = json["lastAccess"];
    social = Social.fromJson(json["social"]);
    created = json["created"];
    modified = json["modified"];
    token = json["token"];
  }
}

class Social {
  String? facebookId;
  String? twitterId;
  String? googleId;
  String? appleId;

  Social({
    required this.facebookId,
    required this.twitterId,
    required this.googleId,
    required this.appleId,
  });

  Social.fromJson(Map<String, dynamic> json) {
    facebookId = json["facebookId"];
    twitterId = json["twitterId"];
    googleId = json["googleId"];
    appleId = json["appleId"];
  }
}

class CustomApiResponse<T> {
  int? statusCode;
  T? data;

  CustomApiResponse({
    this.statusCode,
    this.data,
  });

  CustomApiResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    statusCode = json['status'];
  }
}
