import 'package:class_12/auth/Text_from%20_field.dart';
import 'package:class_12/auth/k_text.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: Row(
          children: [
            KText(titleText: 'Welcome to'),
            SizedBox(
              width: 4,
            ),
            KText(
              titleText: 'Fresh Busket',
              color: Colors.green,
            ),
          ],
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: KTextFromField(
              fillcolor: Colors.white,
              readOnly: true,
              hintext: "Search....",
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
