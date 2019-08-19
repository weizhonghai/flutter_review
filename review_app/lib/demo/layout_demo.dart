import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: UnconstrainedBox(
        child: Container(
          constraints: BoxConstraints(maxHeight: 100, maxWidth: 100,
          // minHeight: 50,minWidth: 50
          ),
          child: Container(
            color: Colors.red,
            width: 30,
            height: 30,
            child: Container(
              width: 40,
              height: 80,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;

  final double size;

  IconBadge({@required this.icon, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 60 + size,
      height: 60 + size,
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
    );
  }
}
