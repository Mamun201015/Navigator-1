import 'package:class_12/auth/Text_from%20_field.dart';
import 'package:class_12/auth/k_text.dart';
import 'package:class_12/const/image_part.dart';
import 'package:class_12/data/card_data/card.dart';
import 'package:class_12/data/card_data/product_data.dart';
import 'package:class_12/utils/height.dart';
import 'package:flutter/material.dart';

class Myhomepage extends StatefulWidget {
  Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final List<Widget> sliderview = [
    Container(
      height: 170,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                kImagePath.asset,
              ))),
    ),
    Container(
      height: 170,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                kImagePath.image1,
              ))),
    ),
    Container(
      height: 170,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                kImagePath.image2,
              ))),
    ),
    Container(
      height: 170,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                kImagePath.image3,
              ))),
    ),
    Container(
      height: 170,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                kImagePath.image4,
              ))),
    ),
  ];
  int seletindex = 0;
  getScale(int index) {
    if (seletindex == index) {
      return 1.0;
    } else {
      return 0.7;
    }
  }

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 150,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    seletindex = value;
                  });
                },
                controller: PageController(
                    initialPage: seletindex, viewportFraction: 0.8),
                itemCount: 5,
                itemBuilder: (context, index) {
                  double scale = getScale(index);
                  return TweenAnimationBuilder(
                    tween: Tween(begin: scale, end: scale),
                    duration: Duration(seconds: 2),
                    builder: (context, value, child) {
                      return Transform.scale(
                        scale: value,
                        child: child,
                      );
                    },
                    child: sliderview[index],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //catagoris part!
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: KText(
                titleText: "Categoris",
                color: Colors.black,
                fontsize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 25,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            kImagePath.listview,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            //Product part!
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: KText(
                titleText: "Products",
                color: Colors.black,
                fontsize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                SizedBox(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: ProductData().itemList.length,
                    itemBuilder: (context, index) {
                      CardData item = ProductData().itemList[index];
                      return Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(item.imgUrl),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
