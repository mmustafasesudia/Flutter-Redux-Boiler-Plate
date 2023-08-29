import 'package:boilerplate/data/api/api_service.dart';
import 'package:boilerplate/data/repositories/api_repository.dart';
import 'package:boilerplate/presentation/home/view_model/home_view_model.dart';
import 'package:boilerplate/utils/app_routes/app_routes.dart';
import 'package:boilerplate/utils/shared_pref_manager/shared_pref.dart';
import 'package:get_it/get_it.dart';

import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

setupDI() async {
  // AppRoutes initialization
  getIt.registerLazySingleton<AppRoutes>(() => AppRoutes());

  // Shared Preference Instance
  final pref = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => pref);

  // Register Shared Pref Manager that depends on SharedPreferences
  getIt.registerLazySingleton(() => SharedPrefsManager(getIt.get()));

  // ApiServices
  getIt.registerLazySingleton(() => ApiService(getIt.get()));

  // Api Repository
  getIt.registerLazySingleton(() => ApiRepository(getIt.get()));

  // Api Repository
  getIt.registerLazySingleton(() => HomeViewModel(getIt.get()));
}
