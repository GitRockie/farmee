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
              height: 140,
              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white)),
        )
      ],
    );
  }
}
