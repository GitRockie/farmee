import 'package:farmee_app/utils/dimensions.dart';
import 'package:farmee_app/widgets/app_column.dart';
import 'package:farmee_app/widgets/app_icon.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class PopularFarmDetail extends StatelessWidget {
  const PopularFarmDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFarmImgSize,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/huerto3.png'))),
              )),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppIcon(icon: Icons.arrow_back_ios_new),
                  AppIcon(icon: Icons.shopping_basket),
                ]),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFarmImgSize - 40,
              child: Container(
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.radius20),
                          topRight: Radius.circular(Dimensions.radius20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AppColumn(
                        text: 'Huerto de Makiko まきこ',
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      const BigText(text: 'Descripcción')
                    ],
                  ))),
        ],
      ),
      bottomNavigationBar: Container(
          height: 120,
          padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2)),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: Colors.white),
              )
            ],
          )),
    );
  }
}



/*Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          margin: EdgeInsets.only(
              right: Dimensions.width10, left: Dimensions.width10),
          child: Center(
              child: ListWheelScrollView(
                  perspective: 0.004,
                  diameterRatio: 2.5,
                  itemExtent: Dimensions.height45,
                  children: [
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
                Container(
                  color: AppColors.mainColor,
                  child: const Center(child: Text('Hello there')),
                ),
              ]))),
    )*/