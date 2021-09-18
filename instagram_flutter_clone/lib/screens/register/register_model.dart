import 'package:instagram_flutter_clone/locator.dart';
import 'package:instagram_flutter_clone/screens/base_model.dart';
import 'package:instagram_flutter_clone/utils/services/supabase_config.dart';

class RegisterModel extends BaseModel {
  String email = "";
  String password = "";
  String name = "";
  SupaBaseConfig _supaBaseConfig = locator<SupaBaseConfig>();

  addNewUser() async {
    try {
      var response = await _supaBaseConfig.signUp(email, password);
      print(response);
    } catch (e) {
      print(e);
    }
  }

  setEmail(String value) {
    email = value;
    notifyListeners();
  }

  setPassword(String value) {
    password = value;
    notifyListeners();
  }

  setName(String value) {
    name = value;
    notifyListeners();
  }
}
