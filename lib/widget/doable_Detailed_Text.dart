import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widget/bigtext.dart';
import 'package:e_commerce/widget/smalltext.dart';
import 'package:flutter/material.dart';

class DoableDetailedText extends StatelessWidget {
  final String productText;
  final String soleMaterial;
  final String soletText;
  final String outerMaterial;
  final String outerText;
  final String innerMaterial;
  final String innerText;
  final String country;
  final String countryText;
  const DoableDetailedText(
      {super.key,
      required this.productText,
      required this.soleMaterial,
      required this.soletText,
      required this.outerMaterial,
      required this.outerText,
      required this.innerMaterial,
      required this.innerText,
      required this.country,
      required this.countryText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: productText,
          size: Dimension.fontSize20,
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height20),
          child: BigText(
            text: soleMaterial,
            size: Dimension.fontSize18,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: SmallText(
            text: soletText,
            size: Dimension.fontSize16,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: BigText(
            text: outerMaterial,
            size: Dimension.fontSize18,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: SmallText(
            text: outerText,
            size: Dimension.fontSize16,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: BigText(
            text: innerMaterial,
            size: Dimension.fontSize18,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: SmallText(
            text: innerText,
            size: Dimension.fontSize16,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: BigText(
            text: country,
            size: Dimension.fontSize18,
            color: Colors.teal,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimension.height_13),
          child: SmallText(
            text: countryText,
            size: Dimension.fontSize16,
            color: Colors.black54,
          ),
        ),
        SizedBox(
          height: Dimension.height_13,
        )
      ],
    );
  }
}
