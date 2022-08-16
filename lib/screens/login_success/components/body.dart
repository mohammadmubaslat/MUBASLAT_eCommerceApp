import 'package:flutter/material.dart';
import 'package:foodapp/components/default_button.dart';
import 'package:foodapp/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.02,
          ),
          Image.asset(
            "assets/images/success.png",
            height: SizeConfig.screenHeight * 0.5,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.06,
          ),
          Text(
            "Login success",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Spacer(),
          SizedBox(
              width: SizeConfig.screenWidth * 0.6,
              child: defaultButton(text: "Back to home", press: () {})),
          Spacer(),
        ],
      ),
    );
  }
}
