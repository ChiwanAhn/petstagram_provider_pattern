import 'package:petstagram/models/models.dart';

abstract class BasePostApiService {
  Future<List<Post>> listPost();
}

class PostApiService implements BasePostApiService {
  Future<List<Post>> listPost() async {
    await Future.delayed(Duration(milliseconds: 500));
    return await Future.value(
      List.generate(
        1,
        (index) => Post(
          id: 'p-$index',
          author: User(
            id: 'u-$index',
            username: 'bibber_',
          ),
          imageUrls: [
            'https://images.unsplash.com/photo-1594399981502-94a5079e2142?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'
          ],
          description: '코바늘',
        ),
      ),
    );
  }
}
