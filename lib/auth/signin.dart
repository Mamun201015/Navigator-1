import 'package:class_12/auth/k_text.dart';
import 'package:class_12/const/image_part.dart';
import 'package:class_12/utils/height.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  static GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Form(
          key: SignIn.formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                kImage.main,
                width: KAppSize.getwidth(context: context, size: 30),
                height: KAppSize.getheight(context: context, size: 20),
                fit: BoxFit.cover,
              ),
              KText(
                titleText: 'Welcome Back',
                fontsize: 30,
                color: Color.fromRGBO(1, 240, 9, 1),
              ),
              SizedBox(
                height: 5,
              ),
              KText(
                titleText: "Login to your existing account ",
                fontsize: 16,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              KTextFromField(
                hintext: "User Name or Email",
                label: Text("Use Name or Email"),
              ),
              SizedBox(
                height: 15,
              ),
              KTextFromField(
                iconData: Icons.lock,
                hintext: "Password",
                label: Text("Password"),
                isPassword: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Color.fromRGBO(2, 232, 10, 1)),
                      )),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  SignIn.formkey.currentState?.validate();
                },
                child: Text(
                  "Signin",
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 4, 201, 11)),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class KTextFromField extends StatelessWidget {
  const KTextFromField({
    super.key,
    this.isPassword = false,
    this.iconData,
    this.hintext,
    this.label,
    this.suffixIcon,
  });
  final bool isPassword;
  final IconData? iconData;
  final hintext;
  final label;
  final suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintext,
          label: label,
          prefixIcon: iconData == null ? Icon(Icons.person) : Icon(iconData),
          suffixIcon: isPassword != false
              ? GestureDetector(
                  onTap: () {},
                  child: Icon(
                      isPassword ? Icons.visibility : Icons.visibility_off))
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.grey, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.grey, width: 3)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(color: Colors.red, width: 3))),
    );
  }
}
