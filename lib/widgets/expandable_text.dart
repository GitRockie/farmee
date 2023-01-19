import 'package:farmee_app/utils/colors.dart';
import 'package:farmee_app/utils/dimensions.dart';
import 'package:farmee_app/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalfText;
  late String secondHalfText;

  bool hiddenText = true;

  double textHeight = Dimensions.screenHeight / 5.6;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      //splitting text in two sections
      firstHalfText = widget.text.substring(0, textHeight.toInt());
      secondHalfText =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalfText = widget.text;
      secondHalfText = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalfText.isEmpty
          ? SmallText(
              height: 1.4,
              text: firstHalfText,
              size: Dimensions.font14,
              color: AppColors.paraColor,
            )
          : Column(
              children: [
                SmallText(
                    height: 1.4,
                    color: AppColors.paraColor,
                    size: Dimensions.font14,
                    text: hiddenText
                        ? ('$firstHalfText...')
                        : (firstHalfText + secondHalfText)),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(children: [
                    SmallText(
                      text: hiddenText ? 'Leer más' : 'Mostrar menos',
                      color: AppColors.mainColor,
                    ),
                    Icon(
                      hiddenText ? Icons.arrow_drop_down : Icons.arrow_drop_up,
                      color: AppColors.mainColor,
                    ),
                  ]),
                )
              ],
            ),
    );
  }
}
