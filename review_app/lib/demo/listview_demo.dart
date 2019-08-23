import 'package:flutter/material.dart';
import '../model/post.dart';
import 'post_show.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(posts[index].imageUrl),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      posts[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      posts[index].author,
                      style: Theme.of(context).textTheme.subhead,
                    ),
                    SizedBox(
                      height: 16,
                    )
                  ],
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.blue.withOpacity(0.3),
                      highlightColor: Colors.red.withOpacity(0.1),
                      onTap: (){
                        debugPrint("Tap");
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) => PostShow(
                              post: posts[index],
                            )
                          )
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
