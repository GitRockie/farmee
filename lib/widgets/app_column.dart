import 'package:farmee_app/widgets/big_text.dart';
import 'package:farmee_app/widgets/icon_and_text.dart';
import 'package:farmee_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class AppColumn extends StatelessWidget {
  const AppColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BigText(
          text: 'Huerto de Makiko まきこ',
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
            const SmallText(
              text: '4.8',
            ),
            SizedBox(
              width: Dimensions.width5,
            ),
            const SmallText(
              text: '123',
            ),
            SizedBox(
              width: Dimensions.width5,
            ),
            const SmallText(text: 'comentarios')
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
    );
  }
}
