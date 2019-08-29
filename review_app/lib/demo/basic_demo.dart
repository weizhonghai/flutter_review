import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return Container(
      color: Colors.grey[100],
      child: Row(
        children: <Widget>[
          Icon(Icons.subject)
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "ninghao",
        style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic),
        children: [
          TextSpan(
            text: ".net",
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "君不见黄河之水天上来，奔流到海不复还。君不见高堂明镜悲白发，朝如青丝暮成雪。人生得意须尽欢，莫使金樽空对月。天生我材必有用，千金散尽还复来.烹羊宰牛且为乐，会须一饮三百杯。",
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 15,
      ),
    );
  }
}
