import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/repo/home_repo_imlp.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupServiceLocator() {
  getit.registerSingleton<ApiServices>(ApiServices());
  getit.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(apiServices: getit.get<ApiServices>()),
  );
}
