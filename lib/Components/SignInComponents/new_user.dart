import 'package:flutter/material.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:places_recommendation/Authentication/sign_up.dart';

class NewUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => SignUp())),
      child: Container(
        child: GradientText(
          "Create new account!",
          gradient:
              LinearGradient(colors: [Colors.purple[100], Colors.amber[100]]),
          style: TextStyle(fontSize: 14),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
