import 'package:e_commerce/screens/shoe_page.dart';
import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widget/bigtext.dart';
import 'package:e_commerce/widget/smalltext.dart';
import 'package:flutter/material.dart';

class MainAppPage extends StatefulWidget {
  const MainAppPage({super.key});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Dimension.height45, bottom: Dimension.height15),
            child: Padding(
              padding: EdgeInsets.only(
                left: Dimension.width20,
                right: Dimension.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Ghana",
                        color: Colors.teal,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: 'Cape Coast',
                            color: Colors.black,
                          ),
                          const Icon(Icons.arrow_drop_down)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimension.width45,
                      height: Dimension.height45,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimension.radius15),
                          color: Colors.teal),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimension.iconSize24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Expanded(
              child: SingleChildScrollView(
            child: ShoePage(),
          )),
        ],
      ),
    );
  }
}
