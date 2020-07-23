import 'package:flutter/material.dart';
import 'package:petstagram/notifiers/post_notifier.dart';
import 'package:petstagram/widgets/post_list_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<PostsNotifier>(context, listen: false).listPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.camera_alt),
        automaticallyImplyLeading: false,
        title: Text('Petstgram'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Icons.send),
          )
        ],
      ),
      body: _buildPosts(),
    );
  }

  Widget _buildPosts() {
    return Consumer<PostsNotifier>(
      builder: (context, postViewModel, child) {
        return ListView.separated(
          itemCount: postViewModel.posts.length,
          itemBuilder: (context, index) {
            return PostListItem(post: postViewModel.posts[index]);
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 16);
          },
        );
      },
    );
  }
}
