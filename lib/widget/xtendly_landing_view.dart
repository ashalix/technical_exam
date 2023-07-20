import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/widget/reusable_widgets.dart';

class XtendlyLandingView extends StatelessWidget {
  final double screenHeight;
  final bool isHalfScreen;

  const XtendlyLandingView({
    Key? key,
    required this.screenHeight,
    required this.isHalfScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.fill,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 500.0,
            width: double.infinity,
            child: Padding(
              padding: !isHalfScreen ? EdgeInsets.zero : const EdgeInsets.symmetric(horizontal: 50.0),
              child: Image.asset(
                !isHalfScreen ? designImageHori : designImageVert,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: !isHalfScreen ? 180.0 : 300.0,
            child: RoundedEdgesButton(
              height: 50.0,
              width: 200.0,
              text: shopNowKey,
              onTap: () {},
              color: whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
