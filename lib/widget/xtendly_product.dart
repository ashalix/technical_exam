import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';

class XtendlyProduct extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final bool isHalfScreen;

  const XtendlyProduct({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.isHalfScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  categorySampleImage,
                  fit: BoxFit.contain,
                ),
                Positioned(
                  top: 25.0,
                  right: -20.0,
                  child: Container(
                    color: discountTagColor,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      productDiscountKey,
                      style: textTheme.bodySmall!.copyWith(
                        color: whiteColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: isHalfScreen ? 45.0 : 50.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productNameKey,
                  style: textTheme.bodySmall!.copyWith(fontWeight: bold),
                ),
                Text(
                  productSellerKey,
                  style: textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
