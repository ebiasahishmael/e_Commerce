import 'package:e_commerce/widget/bigtext.dart';
import 'package:flutter/material.dart';

class DetailsHeader extends StatelessWidget {
  final String text;
  const DetailsHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text),
      ],
    );
  }
}
