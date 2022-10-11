//
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/utils/dimensions.dart';
import 'package:e_commerce/widget/bigtext.dart';
import 'package:e_commerce/widget/icon_text.dart';
import 'package:e_commerce/widget/shoeColumn.dart';
import 'package:e_commerce/widget/smalltext.dart';
import 'package:flutter/material.dart';

class ShoePage extends StatefulWidget {
  const ShoePage({super.key});

  @override
  State<ShoePage> createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimension.pageViewContainer;

  // PageController secondPageController = PageController(viewportFraction: 0.85);
  // // var _secondCurrPageValue = 0.0;
  // final double _secondScaleFactor = 0.8;
  // final double _secondHeight = 150;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Dimension.height_13,
        ),
        //Slider Section
        Container(
          height: Dimension.pageViewBigContainer,
          child: PageView.builder(
            controller: pageController,
            itemCount: 6,
            itemBuilder: ((context, position) {
              return _buildPageItem(position);
            }),
          ),
        ),
        //Swippint Dots
        DotsIndicator(
          dotsCount: 6,
          position: _currPageValue,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeColor: Colors.teal,
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimension.radius5)),
          ),
        ),
        //Top Deals
        SizedBox(
          height: Dimension.height30,
        ),
        Container(
          margin: EdgeInsets.only(left: Dimension.width30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Top Deals'),
              Padding(
                padding: EdgeInsets.only(right: Dimension.width15, top: 10),
                child: InkWell(
                  child: SmallText(text: 'See All'),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        //ListView of Top Deals
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                  left: Dimension.width20,
                  right: Dimension.width20,
                  bottom: Dimension.height15,
                ),
                child: Row(
                  children: [
                    //Image Container
                    Container(
                      width: Dimension.width120,
                      height: Dimension.height120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimension.radius20),
                        color: Colors.white38,
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/6.png'),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: Dimension.height100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimension.radius20),
                            bottomRight: Radius.circular(Dimension.radius20),
                          ),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: Dimension.height_10,
                              left: Dimension.width10,
                              right: Dimension.width10),
                          child: const Shoe_Columns(),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        // Column(
        //   children: [
        //     Container(
        //       height: 150,
        //       child: PageView.builder(
        //         controller: secondPageController,
        //         itemCount: 6,
        //         itemBuilder: ((context, secondPositin) {
        //           return Container(
        //             height: 150,
        //             width: 200,
        //             margin: EdgeInsets.only(
        //                 left: Dimension.width13, right: Dimension.width13),
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(Dimension.radius20),
        //               image: const DecorationImage(
        //                 image: AssetImage('assets/images/1.png'),
        //                 fit: BoxFit.cover,
        //               ),
        //             ),
        //           );
        //         }),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimension.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimension.width13, right: Dimension.width13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimension.radius30),
              color: index.isEven
                  ? const Color(0xFF69c5df)
                  : const Color(0xFF9294cc),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/1.png",
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.height100,
              margin: EdgeInsets.only(
                  left: Dimension.width30,
                  right: Dimension.width30,
                  bottom: Dimension.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.radius20),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 6.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    //blurRadius: 10,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    //blurRadius: 10,
                    offset: Offset(5, 0),
                  )
                ],
              ),
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: Dimension.height15,
                      left: Dimension.width15,
                      right: Dimension.width15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: 'Nike Athletic Shoe'),
                      SizedBox(
                        height: Dimension.height_10,
                      ),
                      Row(
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
                          SmallText(text: '4.7'),
                          SizedBox(
                            width: Dimension.width10,
                          ),
                          SmallText(text: '200'),
                          SizedBox(
                            width: Dimension.width10,
                          ),
                          SmallText(text: 'Comments'),
                        ],
                      ),
                      SizedBox(
                        height: Dimension.height_13,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: const [
                      //     IconText(
                      //       icon: Icons.circle,
                      //       text: 'Normal',
                      //       color: Color(0xFFccc7c5),
                      //       iconColor: Colors.brown,
                      //     ),
                      //     IconText(
                      //       icon: Icons.location_on,
                      //       text: '1.7km',
                      //       color: Color(0xFFccc7c5),
                      //       iconColor: Colors.red,
                      //     ),
                      //     IconText(
                      //       icon: Icons.access_time_filled_rounded,
                      //       text: '32min',
                      //       color: Color(0xFFccc7c5),
                      //       iconColor: Colors.teal,
                      //     )
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
