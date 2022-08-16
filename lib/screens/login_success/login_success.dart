import 'package:flutter/material.dart';

import 'components/body.dart';

class loginSuccessScreen extends StatelessWidget {
  const loginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login success"),
      ),
      body: Body(),
    );
  }
}
