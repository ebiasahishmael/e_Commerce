import 'dart:ui';

import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widget/bigtext.dart';
import 'package:e_commerce/widget/smalltext.dart';
import 'package:flutter/material.dart';

class Shoe_Columns extends StatelessWidget {
  final String text;
  const Shoe_Columns({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Dimension.height_10, bottom: Dimension.height_10),
          child: Row(
            children: [
              Wrap(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: const Color(0xffffd700),
                    size: Dimension.iconSize15,
                  ),
                ),
              ),
              SizedBox(
                width: Dimension.width10,
              ),
              SmallText(text: '6326'),
            ],
          ),
        ),
        Row(
          children: [
            BigText(text: '€34'),
            Text(
              '99',
              style: TextStyle(
                  fontFeatures: const [FontFeature.enable('sups')],
                  fontSize: Dimension.fontSize12),
            )
          ],
        ),
      ],
    );
  }
}
