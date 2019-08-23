import 'package:flutter/material.dart';
import '../model/post.dart';

class PostShow extends StatelessWidget {
  final Post post;

  PostShow({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: Column(
        children: <Widget>[
          Image.network(post.imageUrl),
          Container(
            padding: EdgeInsets.all(32),
            // alignment: Alignment.topLeft,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${post.title}', style: Theme.of(context).textTheme.title),
                Text('${post.author}',
                    style: Theme.of(context).textTheme.subhead),
                SizedBox(height: 32.0),
                Text('${post.description}',
                    style: Theme.of(context).textTheme.body1),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Custom extends StatelessWidget {
  final Post post;

  Custom({@required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network(post.imageUrl),
        Container(
          padding: EdgeInsets.all(32.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('${post.title}', style: Theme.of(context).textTheme.title),
              Text('${post.author}',
                  style: Theme.of(context).textTheme.subhead),
              SizedBox(height: 32.0),
              Text('${post.description}',
                  style: Theme.of(context).textTheme.body1),
            ],
          ),
        ),
      ],
    );
  }
}
