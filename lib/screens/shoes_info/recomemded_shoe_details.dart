// ignore_for_file: sort_child_properties_last

import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widget/bigtext.dart';
import 'package:e_commerce/widget/doable_Detailed_Text.dart';
import 'package:e_commerce/widget/shoeColumn.dart';
import 'package:e_commerce/widget/shoeHeader.dart';
import 'package:e_commerce/widget/top_item_icon.dart';
import 'package:flutter/material.dart';

class RecomemdedShoeDetails extends StatelessWidget {
  const RecomemdedShoeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TopItemsIcon(icon: Icons.clear),
                TopItemsIcon(icon: Icons.shopping_cart)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimension.height20),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(left: Dimension.width15),
                  child: const DetailsHeader(text: "Unpaired Maroon Plimsoll"),
                ),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimension.radius20),
                    topRight: Radius.circular(Dimension.radius20),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.teal,
            expandedHeight: Dimension.topItemImageSize24,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/6.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: Dimension.width15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: Dimension.height20,
                      right: Dimension.width10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Shoe_Columns(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: Dimension.height20,
                      bottom: Dimension.height20,
                      right: Dimension.width10,
                    ),
                    child: const DoableDetailedText(
                      productText: 'Product Details',
                      soleMaterial: "Sole Material",
                      soletText:
                          "Rubber, wear-resistant an non-slip outer sole, increases flexibility and stability, makes you free and train.",
                      outerMaterial: "Outer Material",
                      outerText:
                          'Synthetic, lightweight woven outer material, breathable and soft mesh keeps feet dry and comfortable.',
                      innerMaterial: "Inner Material",
                      innerText:
                          'Textile, the padded insole and the breathable inner lining offer exceptional support and optimise the unique properties of each individual handle.',
                      country: "Country",
                      countryText: "Italy",
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: Dimension.width15,
            right: Dimension.width15,
            bottom: Dimension.height15),
        child: Container(
          height: Dimension.height45,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(color: Colors.white),
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
