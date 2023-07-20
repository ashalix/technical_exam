import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/enums.dart';
import 'package:xtendly_tech_exam/widget/xtendly_category_view.dart';
import 'package:xtendly_tech_exam/widget/xtendly_footer_view.dart';
import 'package:xtendly_tech_exam/widget/xtendly_landing_view.dart';
import 'package:xtendly_tech_exam/widget/xtendly_products_view.dart';

class XtendlyHomepageBody extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final bool isHalfScreen;
  final List<Categories> categories;

  const XtendlyHomepageBody({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.isHalfScreen,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        XtendlyLandingView(
          screenHeight: screenHeight,
          isHalfScreen: isHalfScreen,
        ),
        XtendlyCategoryView(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          isHalfScreen: isHalfScreen,
          categories: categories,
        ),
        XtendlyProductsView(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          isHalfScreen: isHalfScreen,
        ),
        XtendlyFooterView(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          isHalfScreen: isHalfScreen,
        )
      ],
    );
  }
}
