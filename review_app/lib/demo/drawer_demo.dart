import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "wanghao",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                accountEmail: Text("wanghao@ninghao.net"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://resources.ninghao.org/images/wanghao.jpg"),
                ),
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://resources.ninghao.org/images/childhood-in-a-picture.jpg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.6),
                            BlendMode.srcOver))),
              ),
              ListTile(
                title: Text(
                  "Messages",
                  textAlign: TextAlign.right,
                ),
                trailing: Icon(Icons.message),
                onTap: () => {Navigator.pop(context)},
              )
            ],
          ),
        );
  }
}