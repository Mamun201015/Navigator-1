import 'package:class_12/auth/Text_from%20_field.dart';
import 'package:class_12/auth/k_text.dart';
import 'package:class_12/auth/signup.dart';
import 'package:class_12/const/image_part.dart';
import 'package:class_12/screen/navber.dart';
import 'package:class_12/utils/colors.dart';
import 'package:class_12/utils/height.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isPassword = true;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(50),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  kImagePath.img,
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
                  prefixIcon: Icon(Icons.person),
                  hintext: "User Name or Email",
                  label: Text("Use Name or Email"),

                  //
                  // validator: (value) {
                  //   if (value == null || value.isEmpty) {
                  //     return " field can not be emopty";
                  //   }
                  // },
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                    prefixIcon: Icon(Icons.lock),
                    hintext: "Password",
                    label: Text("Password"),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     return " field can not be emopty";
                    //   }
                    // },
                    isPassword: isPassword,
                    suffixIcon: GestureDetector(
                        onTap: () {
                          isPassword = !isPassword;
                          setState(() {});
                        },
                        child: Icon(isPassword
                            ? Icons.visibility_off
                            : Icons.visibility))),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password",
                          style:
                              TextStyle(color: Color.fromRGBO(2, 232, 10, 1)),
                        )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      // formKey.currentState?.validate();
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => NavBar(),
                      ));
                    },
                    child: Text(
                      "Signin",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Color.fromARGB(255, 4, 201, 11)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have a account"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: KText(
                        titleText: "Signup",
                        color: Appcolors.green,
                      ),
                    )
                  ],
                )
                // ElevatedButton(onPressed: () {}, child: Text("Sign in"))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
