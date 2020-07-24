import 'package:flutter/material.dart';
import 'package:petstagram/locator.dart';
import 'package:petstagram/models/models.dart';
import 'package:petstagram/services/post_service.dart';

class PostsViewModel with ChangeNotifier {
  PostsService postService = locator<PostsService>();
  List<Post> get posts => postService.posts;

  Future listPosts() async {
    try {
      await postService.listPost();
      notifyListeners();
    } catch (e) {}
  }
}
