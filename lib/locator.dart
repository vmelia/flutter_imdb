import 'package:get_it/get_it.dart';
import 'contracts/movie_provider_interface.dart';
import 'services/movie_provider_service.dart';

var locator = GetIt.instance;

void setupLocator() {
  GetIt.I.registerSingleton<MovieProviderInterface>(MovieProviderService());
}