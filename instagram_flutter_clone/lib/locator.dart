import 'package:get_it/get_it.dart';
import 'package:instagram_flutter_clone/screens/home/home_model.dart';
import 'package:instagram_flutter_clone/screens/logIn/login_model.dart';
import 'package:instagram_flutter_clone/screens/register/register_model.dart';
import 'package:instagram_flutter_clone/utils/services/supabase_config.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //Register Services
  locator.registerLazySingleton(() => SupaBaseConfig());

  //Register Models
  locator.registerFactory(() => RegisterModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => HomeModel());
}
