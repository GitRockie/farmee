import 'package:farmee_app/utils/colors.dart';
import 'package:farmee_app/widgets/big_text.dart';
import 'package:farmee_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class FarmsPageBody extends StatefulWidget {
  const FarmsPageBody({super.key});

  @override
  State<FarmsPageBody> createState() => _FarmsPageBodyState();
}

class _FarmsPageBodyState extends State<FarmsPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
            height: 220,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven
                    ? const Color(0xFF69c5df)
                    : const Color(0xFF9294cc),
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/huerto1.png')))),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(text: 'Rancho de Makiko'),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        children: List.generate(
                            5,
                            (index) => const Icon(
                                  Icons.star,
                                  color: AppColors.mainColor,
                                  size: 15,
                                )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(
                        text: '4.8',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SmallText(
                        text: '1234',
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SmallText(text: 'comentarios')
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
