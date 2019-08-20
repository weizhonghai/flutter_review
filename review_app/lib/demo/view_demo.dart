import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {

  Widget _gridItemBuilder (BuildContext context,int index) {
    return Container(
      child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      )
      // SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 3,
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      // ),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      // scrollDirection: Axis.horizontal,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            "Item",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            "Item",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            "Item",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 200,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      // scrollDirection: Axis.horizontal,
      // scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            "Item",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            "Item",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
        Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            "Item",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(posts[index].title,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(posts[index].author)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false,
      reverse: true,
      scrollDirection: Axis.vertical,
      // scrollDirection: Axis.horizontal,
      onPageChanged: (currentPage) => debugPrint("$currentPage"),
      controller: PageController(
          initialPage: 1, keepPage: false, viewportFraction: 0.85),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "ONE",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "TWO",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            "THREE",
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
