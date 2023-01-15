import 'package:farmee_app/utils/colors.dart';
import 'package:flutter/material.dart';

class MainFarmsPage extends StatelessWidget {
  const MainFarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          //Scrolling parameter goes here
          child: Container(
            margin: const EdgeInsetsDirectional.only(top: 50, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text('Country'),
                        Text('City'),
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
              ],
            ),
          ),
        )
      ],
    ));
  }
}
