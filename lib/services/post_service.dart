import 'package:petstagram/models/models.dart';

abstract class BasePostService {
  Future listPost();
}

class PostsService implements BasePostService {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future listPost() async {
    await Future.delayed(Duration(milliseconds: 500));
    _posts = await Future.value(fakePosts);
  }
}

var fakePosts = List.generate(
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
);
