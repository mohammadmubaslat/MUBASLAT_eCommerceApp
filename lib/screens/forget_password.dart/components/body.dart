import 'package:flutter/material.dart';
import 'package:foodapp/components/default_button.dart';
import 'package:foodapp/components/form_error.dart';
import 'package:foodapp/components/no_Account_row.dart';

import '../../../components/custom_suffix_icon.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          Text("Forget password",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28))),
          Text(
            "Please enter your ameil and we will send \nyou a link to retrun to your account",
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          forgetPassForm(),
        ],
      ),
    );
  }
}

class forgetPassForm extends StatefulWidget {
  const forgetPassForm({Key? key}) : super(key: key);

  @override
  State<forgetPassForm> createState() => _forgetPassFormState();
}

class _forgetPassFormState extends State<forgetPassForm> {
  List<String> errors = [];
  late String email;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (newValue) => email = newValue!,
                  onChanged: (value) {
                    if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                      setState(() {
                        errors.remove(kEmailNullError);
                      });
                    } else if (emailValidatorRegExp.hasMatch(value) &&
                        errors.contains(kInvalidEmailError)) {
                      setState(() {
                        errors.remove(kInvalidEmailError);
                      });
                    }
                    return null;
                  },
                  validator: (value) {
                    if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                      setState(() {
                        errors.add(kEmailNullError);
                      });
                    } else if (!emailValidatorRegExp.hasMatch(value) &&
                        !errors.contains(kInvalidEmailError)) {
                      setState(() {
                        errors.add(kInvalidEmailError);
                      });
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: customSuffixIcon(
                      svgIcon: "assets/icons/Mail.svg",
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                formError(errors: errors),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                defaultButton(
                    text: "Continue",
                    press: () {
                      if (_formKey.currentState!.validate()) {
                        // code here
                      }
                    }),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                noAccountRow(),
              ],
            ),
          ),
        ));
  }
}
