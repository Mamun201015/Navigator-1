import 'package:class_12/auth/Text_from%20_field.dart';
import 'package:class_12/auth/k_text.dart';
import 'package:class_12/const/image_part.dart';
import 'package:class_12/utils/height.dart';
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
          // SizedBox(
          //   height: 150,
          //   child: PageView.builder(
          //     itemCount: 5,
          //     itemBuilder: (context, index) {
          //       return Stack(
          //         children: [
          //           Container(
          //             child: Image.asset(
          //               kImag.main,
          //               width: KAppSize.getwidth(context: context, size: 30),
          //               height: KAppSize.getheight(context: context, size: 20),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           Container(
          //             child: Image.asset(
          //               kImag.main,
          //               width: KAppSize.getwidth(context: context, size: 30),
          //               height: KAppSize.getheight(context: context, size: 20),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           Container(
          //             child: Image.asset(
          //               kImag.main,
          //               width: KAppSize.getwidth(context: context, size: 30),
          //               height: KAppSize.getheight(context: context, size: 20),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //           Container(
          //             child: Image.asset(
          //               kImag.main,
          //               width: KAppSize.getwidth(context: context, size: 30),
          //               height: KAppSize.getheight(context: context, size: 20),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ],
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
