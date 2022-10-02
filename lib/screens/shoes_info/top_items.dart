//Ishoe Detail page

import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widget/bigtext.dart';
import 'package:e_commerce/widget/shoeColumn.dart';
import 'package:e_commerce/widget/smalltext.dart';
import 'package:e_commerce/widget/top_item_icon.dart';
import 'package:flutter/material.dart';

class TopItems extends StatelessWidget {
  const TopItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //Beginning of Stack
      body: Stack(
        children: [
          //Background Image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimension.topItemImageSize24,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/6.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //Positioning of Icons
          Positioned(
            top: Dimension.height45,
            left: Dimension.height20,
            right: Dimension.height20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TopItemsIcon(icon: Icons.arrow_back_ios_new),
                TopItemsIcon(icon: Icons.shopping_cart),
              ],
            ),
          ),
          //Details
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimension.topItemImageSize24 - 30,
            child: Container(
              padding: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  top: Dimension.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimension.height30),
                      topRight: Radius.circular(Dimension.height30)),
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Shoe_Columns(text: 'Unpaired Maroon Plimsoll'),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Dimension.height20,
                      bottom: Dimension.height20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigText(
                            text: 'Product Details',
                            size: Dimension.fontSize18),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.height20),
                          child: BigText(
                            text: 'Sole Material',
                            size: Dimension.fontSize12,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.height_10),
                          child: SmallText(
                            text:
                                'Rubber, wear-resistant an non-slip outer sole, increases flexibility and stability, makes you free and train.',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.height_10),
                          child: BigText(
                            text: 'Outer Material',
                            size: Dimension.fontSize12,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.height_10),
                          child: SmallText(
                            text:
                                'Synthetic, lightweight woven outer material, breathable and soft mesh keeps feet dry and comfortable.',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.height_10),
                          child: BigText(
                            text: 'Inner Materia',
                            size: Dimension.fontSize12,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: Dimension.height_10),
                          child: SmallText(
                            text:
                                'Textile, the padded insole and the breathable inner lining offer exceptional support and optimise the unique properties of each individual handle.',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      //Bottom Navigation Bar
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: Dimension.width15,
            right: Dimension.width15,
            bottom: Dimension.height15),
        child: Container(
          height: Dimension.height45,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: Dimension.width30,
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                  size: Dimension.height30,
                ),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              Expanded(
                child: Container(
                  height: Dimension.height38,
                  decoration: const BoxDecoration(color: Colors.black),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'ADD TO CART',
                      style: TextStyle(
                          color: Colors.white, fontSize: Dimension.height15),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
