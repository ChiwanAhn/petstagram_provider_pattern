import 'package:petstagram/models/models.dart';
import 'package:petstagram/services/post_api_service.dart';

class PostRepo {
  PostApiService _apiService = PostApiService();

  Future<List<Post>> listPost() {
    return _apiService.listPost();
  }
}
