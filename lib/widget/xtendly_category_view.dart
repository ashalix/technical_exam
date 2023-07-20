import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/utils/enums.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';
import 'package:xtendly_tech_exam/widget/reusable_widgets.dart';

class XtendlyCategoryView extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final bool isHalfScreen;
  final List<Categories> categories;

  const XtendlyCategoryView({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.isHalfScreen,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double categoryImageWidth = screenWidth / 5;
    return Container(
      color: categoryBackgroundColor,
      height: isHalfScreen ? (categoryImageWidth * 1.8) * 3 : screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Category listed depending on the device size
          // Vertically if mobile web then horizontally if not
          Container(
            height: isHalfScreen ? (categoryImageWidth * 1.8) * 3 : categoryImageWidth * 1.5,
            width: screenWidth,
            alignment: Alignment.center,
            child: ListView.builder(
              itemCount: categories.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: isHalfScreen ? Axis.vertical : Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: space50),
              itemBuilder: (context, index) => Container(
                height: categoryImageWidth * 1.5,
                width: categoryImageWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(categorySampleImage),
                    fit: isHalfScreen ? null : BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.bottomCenter,
                child: RoundedEdgesButton(
                  text: categories[index].getLabel(),
                  height: 25,
                  width: categoryImageWidth / 1.2,
                  color: whiteColor,
                  onTap: () {},
                ),
              ),
            ),
          ),
          // Message or note that is not visible when the user is using mobile
          if (!isHalfScreen) ...[
            verticalSpace50,
            SizedBox(
              width: screenWidth / 1.5,
              child: Text(
                categoryMessage,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ],
      ),
    );
  }
}
