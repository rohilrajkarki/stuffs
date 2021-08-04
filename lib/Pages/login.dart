import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jump/Pages/sign_up.dart';
import 'package:jump/widgets/Buttons/actionButton.dart';
import 'package:jump/widgets/Buttons/credButton.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Login"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/log_pic.png"))),
            ),
            CredButtons(
              whatText: "Enter your email",
              whatColor: Color(0xffF0F0F7),
              whatlength: 300,
            ),
            SizedBox(
              height: 15,
            ),
            CredButtons(
              whatText: "Enter the password",
              whatColor: Color(0xffF0F0F7),
              whatlength: 300,
            ),
            Align(
              alignment: Alignment(-0.69, 0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot password?",
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ActionButton(
              whattext: "LOGIN",
            ),
            SizedBox(
              height: 50,
            ),
            RichText(
                text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: "Don't have an account "),
                TextSpan(
                  text: "Sign Up?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                ),
              ],
            )),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 10,
                      color: Colors.grey[350],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "OR",
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      width: 10,
                      color: Colors.grey[350],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
