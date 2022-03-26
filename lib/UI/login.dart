import 'package:bar_manager/Utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HypeColors.HypeBgBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: UnDraw(
              illustration: UnDrawIllustration.login,
              color: HypeColors.HypeBlue,
              height: 200,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(CupertinoIcons.pencil_ellipsis_rectangle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)))),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: Icon(CupertinoIcons.pencil_ellipsis_rectangle),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)))),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("Login"), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(HypeColors.HypeLightBronze)),)
        ],
      ),
    );
  }
}
