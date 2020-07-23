import 'package:flutter/material.dart';
import 'package:petstagram/models/models.dart';
import 'package:petstagram/repositories/post_repo.dart';

class PostsNotifier with ChangeNotifier {
  List<Post> _posts = [];

  Future listPosts() async {
    try {
      final posts = await PostRepo().listPost();
      _posts = posts;
      notifyListeners();
    } catch (e) {}
  }

  List<Post> get posts => _posts;
}
