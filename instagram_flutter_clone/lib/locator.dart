import 'package:get_it/get_it.dart';
import 'package:instagram_flutter_clone/screens/logIn/login_model.dart';
import 'package:instagram_flutter_clone/screens/register/register_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //Register Services
  // locator.registerLazySingleton(() => null);

  //Register Models
  locator.registerFactory(() => RegisterModel());
  locator.registerFactory(() => LoginModel());
}
