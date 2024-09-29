import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/App_column.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Icon_and_text_widget.dart';
import 'package:food_delivery/Widgets/Small_texts.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.9);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Slider
        Container(
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue.floor(),
          decorator: DotsDecorator(
            //color: AppColors.mainColor,
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(height: Dimensions.height15),
        Container(
          margin: EdgeInsets.only(left: Dimensions.height30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigTexts(text: "Popular"),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: EdgeInsets.only(bottom: 2),
                child: BigTexts(
                  text: ".",
                  color: Colors.black26,
                ),
              ),
              SizedBox(width: Dimensions.width10),
              Container(
                margin: EdgeInsets.only(bottom: 4),
                child: SmallTexts(text: "Food pairing"),
              ),
            ],
          ),
        ),
        //List of Foods with images
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width30,
                  bottom: Dimensions.height20),
              child: Row(
                children: [
                  //Image section
                  Container(
                    height: Dimensions.listViewImgSize,
                    width: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white38,
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/Food2.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: Dimensions.height5),
                      height: Dimensions.listViewTextContSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: Dimensions.height5,
                          left: Dimensions.width10,
                          bottom: Dimensions.height5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigTexts(text: "Parotta"),
                            SmallTexts(text: "with chalna & gravy"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconAndTextWidget(
                                    icon: Icons.circle_sharp,
                                    text: "normal",
                                    iconColor: AppColors.iconColor1),
                                IconAndTextWidget(
                                    icon: Icons.location_on,
                                    text: "0.7 km",
                                    iconColor: AppColors.iconColor2),
                                IconAndTextWidget(
                                    icon: Icons.access_time_rounded,
                                    text: "26 min",
                                    iconColor: Colors.redAccent),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  //Text section
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    } else {
      var currentScale = 0.8;
      var currentTransition = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransition, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width12, right: Dimensions.width12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              color: index.isEven ? AppColors.iconColor1 : AppColors.iconColor2,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/Food1.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width40,
                  right: Dimensions.width40,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3.0,
                    offset: Offset(0, 3.5),
                  )
                ],
              ),
              child: Container(
                width: 350,
                padding: EdgeInsets.only(
                    top: Dimensions.height10,
                    left: Dimensions.width10,
                    right: Dimensions.width10),
                child: AppColumn(
                  text: 'Chicken Briyani',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
