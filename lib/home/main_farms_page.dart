import 'package:farmee_app/home/farms_page_body.dart';
import 'package:farmee_app/utils/colors.dart';
import 'package:farmee_app/widgets/big_text.dart';
import 'package:farmee_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFarmsPage extends StatelessWidget {
  const MainFarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //Showing the header
        Container(
          //Scrolling parameter goes here
          child: Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: 'Spain',
                      color: AppColors.mainColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: 'Mataró',
                          color: Colors.black54,
                        ),
                        const Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Center(
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        //Showing the body
        const FarmsPageBody(),
      ],
    ));
  }
}
