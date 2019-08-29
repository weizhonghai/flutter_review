import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[RegisterForm()],
          ),
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    textEditingController.text = "hi";
    textEditingController.addListener(() {
      debugPrint(textEditingController.text);
    });
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      onChanged: (value) {},
      decoration: InputDecoration(
        icon: Icon(Icons.subject),
        labelText: "Title",
        hintText: "Enter the post title",
        // border: InputBorder.none
        border: OutlineInputBorder(),
        filled: true,
        // fillColor: Colors.red
      ),
    );
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormKey = GlobalKey<FormState>();
  String userName, passWord;
  bool autovalidate = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
                labelText: "Username", hintText: "zhanweiwenzi"),
            onSaved: (value) {
              userName = value;
            },
          ),
          TextFormField(
            obscureText: true,
            decoration:
                InputDecoration(labelText: "Password", helperText: "帮助文本"),
            onSaved: (value) {
              passWord = value;
            },
            autovalidate: true,
            validator: (value) {
              if (value.length == 0) {
                return "密码不能为空";
              }
              return null;
            },
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                "Register",
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0,
              onPressed: () {
                debugPrint("${registerFormKey.currentState.validate()}");
                registerFormKey.currentState.save();
                debugPrint("username=$userName,password=$passWord");
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Registering..."),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
