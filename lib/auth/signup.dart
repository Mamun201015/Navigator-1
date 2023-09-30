import 'package:class_12/auth/Text_from%20_field.dart';
import 'package:class_12/auth/k_text.dart';
import 'package:class_12/auth/signin.dart';
import 'package:class_12/const/image_part.dart';
import 'package:class_12/screen/navber.dart';
import 'package:class_12/utils/colors.dart';
import 'package:class_12/utils/height.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  kImagePath.app,
                  width: KAppSize.getwidth(context: context, size: 30),
                  height: KAppSize.getheight(context: context, size: 20),
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 10,
                ),
                KText(
                  titleText: 'Register!',
                  fontsize: 25,
                  color: Color.fromRGBO(1, 240, 9, 1),
                ),
                SizedBox(
                  height: 5,
                ),
                KText(
                  titleText: "Create your new account ",
                  fontsize: 16,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                  prefixIcon: Icon(Icons.person),
                  hintext: "Enter Your Full Name",
                  label: Text("Full Name"),
                ),
                SizedBox(
                  height: 15,
                ),
                KTextFromField(
                  prefixIcon: Icon(Icons.email),
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

                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {
                      // formKey.currentState?.validate();
                      Navigator.of(context).pop(MaterialPageRoute(
                        builder: (context) => SignIn(),
                      ));
                    },
                    child: Text(
                      "SignUp",
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
                    Text("Already have a account!"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignIn(),
                            ));
                      },
                      child: KText(
                        titleText: "Signin",
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
