import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jump/widgets/Buttons/actionButton.dart';
import 'package:jump/widgets/Buttons/additionalButton.dart';
import 'package:jump/widgets/Buttons/credButton.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "New here?Create a new account",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CredButtons(
              whatText: "Username",
              whatlength: 300,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CredButtons(
                  whatText: "First Name",
                  whatlength: 130,
                ),
                CredButtons(
                  whatText: "Last Name",
                  whatlength: 130,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CredButtons(
                  whatText: "Password",
                  whatlength: 130,
                ),
                CredButtons(
                  whatText: "Confirm Password",
                  whatlength: 130,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            CredButtons(
              whatText: "Email",
              whatlength: 300,
            ),
            SizedBox(
              height: 30,
            ),
            ActionButton(
              whattext: "SIGN UP",
            ),
            SizedBox(
              height: 40,
            ),
            RichText(
                text: TextSpan(
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: "Already have an account "),
                TextSpan(
                  text: "Login?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pop(context);
                    },
                ),
              ],
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
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
                        padding: const EdgeInsets.all(20),
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
                  SizedBox(
                    height: 30,
                  ),
                  AdditionalButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
