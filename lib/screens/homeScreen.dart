import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  // post
  // - author
  // - imageUrls
  // - description

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
        body: _buildPosts());
  }

  Widget _buildPosts() {
    return ListView.separated(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(radius: 16),
                    ),
                    Text('bibber_'),
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
                  child: Image.network(
                      'https://images.unsplash.com/photo-1594399981502-94a5079e2142?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
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
                      'bibber_',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('코바늘'),
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 16);
      },
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
