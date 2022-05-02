import 'package:flutter/cupertino.dart';
import 'package:google_login_with_provider/Components/error_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';

// import 'package:shared_preferences/shared_preferences.dart';
class GetProvider extends ChangeNotifier {

  bool btnCheck = true;
  void checkValue() {
    btnCheck = !btnCheck;
    notifyListeners();
  }
}
