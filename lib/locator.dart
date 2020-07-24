import 'package:get_it/get_it.dart';
import 'package:petstagram/services/post_service.dart';
import 'package:petstagram/view_models/posts_view_model.dart';

GetIt locator = GetIt.instance;

setup() {
  locator.registerLazySingleton(() => PostsService());
  locator.registerLazySingleton(() => PostsViewModel());
}
