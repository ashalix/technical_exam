import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/widget/reusable_widgets.dart';
import 'package:xtendly_tech_exam/widget/xtendly_product.dart';

class XtendlyProductsView extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final bool isHalfScreen;

  const XtendlyProductsView({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.isHalfScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: space50,
          width: screenWidth,
          color: whiteColor,
          alignment: Alignment.center,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: isHalfScreen ? 1 : 5,
            padding: const EdgeInsets.all(15.0),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: space20),
              child: Text(
                saleKey,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: bold,
                      fontSize: space20,
                      color: redColor,
                    ),
              ),
            ),
          ),
        ),
        const Divider(thickness: 3),
        GridView.builder(
          itemCount: 8,
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(space50),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isHalfScreen ? 2 : 4,
            mainAxisExtent: isHalfScreen ? (screenWidth / 2) : (screenHeight / 2.5),
            mainAxisSpacing: space20,
            crossAxisSpacing: space50,
          ),
          itemBuilder: (context, index) => XtendlyProduct(
            screenWidth: screenWidth,
            isHalfScreen: isHalfScreen,
            screenHeight: screenHeight,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Align(
            alignment: Alignment.center,
            child: RoundedEdgesButton(
              height: 60.0,
              width: 220.0,
              text: moreKey,
              onTap: () {},
              color: whiteColor,
            ),
          ),
        )
      ],
    );
  }
}
