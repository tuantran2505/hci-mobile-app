import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rentworker/SignupPage/components/background.dart';
import 'package:rentworker/components/rounded_button.dart';
import 'package:rentworker/components/rounded_input_field.dart';
import 'package:rentworker/components/rounded_password_field.dart';
import 'package:rentworker/constants.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({Key key, @required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: size.height * 0.03,
        ),
        Text(
          "SIGN UP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset("assets/icons/signup.svg", width: size.height * 0.25),
        RoundedInputField(
          hintText: 'Your Email',
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        RoundedButton(
          text: "SIGN UP",
          color: kPrimaryColor,
          press: () {},
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
      ]),
    );
  }
}
