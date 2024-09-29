import 'package:flutter/material.dart';
import 'package:food_delivery/Utilities/Colors.dart';
import 'package:food_delivery/Utilities/Dimensions.dart';
import 'package:food_delivery/Widgets/Big_texts.dart';
import 'package:food_delivery/Widgets/Icon_and_text_widget.dart';
import 'package:food_delivery/Widgets/Small_texts.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigTexts(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) {
                  if (index < 4) {
                    // Full stars
                    return Icon(
                      Icons.star,
                      color: AppColors.mainColor,
                      size: 18,
                    );
                  }
                  if (index == 4) {
                    // Half star
                    return Icon(
                      Icons.star_half,
                      color: AppColors.mainColor,
                      size: 18,
                    );
                  } else {
                    // Empty star
                    return Icon(
                      Icons.star_border,
                      color: AppColors.mainColor,
                      size: 18,
                    );
                  }
                },
              ),
            ),
            SizedBox(width: Dimensions.height10),
            SmallTexts(text: "4.5"),
            SizedBox(width: Dimensions.height10),
            SmallTexts(text: "2426"),
            SizedBox(width: Dimensions.height5),
            SmallTexts(text: "comments")
          ],
        ),
        SizedBox(height: Dimensions.height15),
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
    );
  }
}
