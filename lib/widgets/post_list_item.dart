import 'package:flutter/material.dart';
import 'package:petstagram/models/models.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({Key key, @required this.post}) : super(key: key);
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(radius: 16),
                ),
                Text(
                  post.author.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Divider(height: 0),
          Container(
            color: Colors.red.withOpacity(0.2),
            child: AspectRatio(
              aspectRatio: 1.4,
              child: Image.network(post.imageUrls[0]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: <Widget>[
                Icon(Icons.favorite_border),
                Icon(Icons.chat_bubble_outline),
                Icon(Icons.add_circle_outline),
                Spacer(),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          _buildFavoriteText(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              children: <Widget>[
                Text(
                  post.author.username,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(post.description),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFavoriteText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: RichText(
        text: TextSpan(
          text: 'ha_ssooj',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
            fontSize: 13,
          ),
          children: [
            TextSpan(
              text: '님 외 ',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            TextSpan(text: '여러 명'),
            TextSpan(
              text: '이 좋아합니다',
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
