class ApiModel {
  late bool status;
  late Data data;

  ApiModel({
    required this.status,
    required this.data,
  });

  ApiModel.fromJson(Map<String, dynamic> json) {
    status = json["status"];
    data = Data.fromJson(json["data"]);
  }
}

//^ Data
class Data {
  late AdId adid;
  late Keyword keyword;
  late List<MoreApp> moreApp;
  late List<PlayGame> playGame;
  Data({
    required this.adid,
    required this.keyword,
    required this.moreApp,
    required this.playGame,
  });
  Data.fromJson(Map<String, dynamic> json) {
    adid = AdId.fromJson(json["ad_id"]);
    keyword = Keyword.fromJson(json["keyword"]);

    //* more app list
    if (json["more_app"] != null) {
      moreApp = <MoreApp>[];
      json["more_app"].forEach((a) {
        moreApp.add(MoreApp.fromJson(a));
      });
    }

    //* play game list
    if (json["play_game"] != null) {
      playGame = <PlayGame>[];
      json["play_game"].forEach((b) {
        playGame.add(PlayGame.fromJson(b));
      });
    }
  }
}

//^ AdId
class AdId {
  late String fbNative;
  late String fbReward;
  late String admobReward;
  late String adType;
  late String admobInterstitial;
  late String admobOpenad;
  late String fbBanner;
  late String admoNative;
  late String admobBanner;
  late String fbInterstitial;

  AdId({
    required this.fbNative,
    required this.fbReward,
    required this.admobReward,
    required this.adType,
    required this.admobInterstitial,
    required this.admobOpenad,
    required this.fbBanner,
    required this.admoNative,
    required this.admobBanner,
    required this.fbInterstitial,
  });
  AdId.fromJson(Map<String, dynamic> json) {
    fbNative = json["facebook_native"];
    fbReward = json["facebook_reward"];
    admobReward = json["admob_reward"];
    adType = json["ad_type"];
    admobInterstitial = json["admob_interstitial"];
    admobOpenad = json["admob_openad"];
    fbBanner = json["facebook_banner"];
    admoNative = json["admob_native"];
    admobBanner = json["admob_banner"];
    fbInterstitial = json["facebook_interstitial"];
  }
}

//^ keyword
class Keyword {
  late String version;
  late String privacy;
  Keyword({
    required this.version,
    required this.privacy,
  });
  Keyword.fromJson(Map<String, dynamic> json) {
    version = json["version"];
    privacy = json["privacy"];
  }
}

//^ MoreApp
class MoreApp {
  late String imageUrl;
  late String appUrl;
  late String appName;
  late bool active;

  MoreApp({
    required this.imageUrl,
    required this.appUrl,
    required this.active,
    required this.appName,
  });

  MoreApp.fromJson(Map<String, dynamic> json) {
    imageUrl = json["imageurl"];
    appUrl = json["appurl"];
    active = json["active"];
    appName = json["appname"];
  }
}

//^ PlayGame
class PlayGame {
  late String imageUrl;
  late String appUrl;
  late bool active;
  PlayGame({
    required this.imageUrl,
    required this.appUrl,
    required this.active,
  });

  PlayGame.fromJson(Map<String, dynamic> json) {
    imageUrl = json["imageurl"];
    appUrl = json["appurl"];
    active = json["active"];
  }
}

class CustomApiModel<T> {
  int? status;
  T? data;

  CustomApiModel({this.status, this.data});

  CustomApiModel.fromJson(Map<String, dynamic> json) {
    data = json["data"];
    status = json["status"];
  }
}
