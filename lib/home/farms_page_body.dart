import 'package:dots_indicator/dots_indicator.dart';
import 'package:farmee_app/utils/colors.dart';
import 'package:farmee_app/utils/dimensions.dart';
import 'package:farmee_app/widgets/big_text.dart';
import 'package:farmee_app/widgets/icon_and_text.dart';
import 'package:farmee_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FarmsPageBody extends StatefulWidget {
  const FarmsPageBody({super.key});

  @override
  State<FarmsPageBody> createState() => _FarmsPageBodyState();
}

class _FarmsPageBodyState extends State<FarmsPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  final double _scaleFactor = 0.8;
  final double _height = Dimensions.pageViewContainer;
  //Overriding init state method
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
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
    //print(Dimensions.screenHeight);
    //print(Dimensions.screenWidth);
    return Column(
      children: [
        SizedBox(
          //color: Colors.red,
          height: Dimensions.pageView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            color: AppColors.signColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius5)),
          ),
        )
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransPosititon = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransPosititon, 0);
    } else if (index == _currentPageValue.floor() + 1) {
      var currentScale =
          _scaleFactor + (_currentPageValue - index + 1) * (1 - _scaleFactor);
      var currentTransPosititon = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransPosititon, 0);
    } else if (index == _currentPageValue.floor() - 1) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
      var currentTransPosititon = _height * (1 - currentScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1);
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, currentTransPosititon, 0);
    } else {
      var currentScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currentScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
              height: Dimensions.pageViewContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width10, right: Dimensions.width10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                  color: index.isEven
                      ? const Color(0xFF69c5df)
                      : const Color(0xFF9294cc),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/huerto1.png')))),
          GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Dimensions.height15,
                      horizontal: Dimensions.width20),
                  child: const IconAndText(
                    icon: Icons.location_on,
                    iconColor: AppColors.yellowColor,
                    text: '2.4 km',
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: Dimensions.height15,
                      horizontal: Dimensions.width20),
                  child: const IconAndText(
                    icon: Icons.favorite_outlined,
                    iconColor: Colors.white,
                    text: '',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0)),
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.width15,
                    right: Dimensions.width15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: 'Yasaihata Makiko まきこ',
                    ),
                    SizedBox(height: Dimensions.height10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: Dimensions.iconSize15,
                                  )),
                        ),
                        SizedBox(
                          width: Dimensions.width10,
                        ),
                        SmallText(
                          text: '4.8',
                        ),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        SmallText(
                          text: '123',
                        ),
                        SizedBox(
                          width: Dimensions.width5,
                        ),
                        SmallText(text: 'comentarios')
                      ],
                    ),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IconAndText(
                          icon: Icons.compost,
                          iconColor: AppColors.iconColor2,
                          text: 'Tierra orgánica',
                        ),
                        IconAndText(
                          icon: Icons.dashboard,
                          iconColor: AppColors.mainColor,
                          text: '24 m2',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
