import 'package:instagram_flutter_clone/screens/base_model.dart';

class LoginModel extends BaseModel {
  String email = "";
  String password = "";

  setMail(String value) {
    email = value;
    notifyListeners();
  }

  setPassword(String value) {
    password = value;
    notifyListeners();
  }
}
