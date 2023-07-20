import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/utils/enums.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';
import 'package:xtendly_tech_exam/widget/reusable_widgets.dart';

class XtendlyFooterView extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final bool isHalfScreen;

  const XtendlyFooterView({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.isHalfScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 2,
      width: screenWidth,
      color: categoryBackgroundColor,
      child: ListView(
        padding: const EdgeInsets.all(space50),
        scrollDirection: isHalfScreen ? Axis.vertical : Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          ///First Row (contacts)
          SizedBox(
            width: screenWidth / 1.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  appLogo,
                  height: 50.0,
                  width: 50.0,
                ),
                verticalSpace20,
                Column(
                  children: [
                    ...Contacts.values.map((e) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ContactView(
                            icon: e.getInfo()[0],
                            details: e.getInfo()[1],
                          ),
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [...SocialMedia.values.map((soc) => Icon(soc.getIcon()))],
                  ),
                )
              ],
            ),
          ),

          /// Second Row (Collection)
          SizedBox(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  collectionKey,
                  style: textTheme.bodyLarge!.copyWith(fontWeight: bold),
                ),
                if (!isHalfScreen)
                  ...List.generate(
                      6,
                      (index) => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(collectionKey),
                          ))
              ],
            ),
          ),

          /// Third Row (Collection)
          SizedBox(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  informationKey,
                  style: textTheme.bodyLarge!.copyWith(fontWeight: bold),
                ),
                if (!isHalfScreen)
                  ...List.generate(
                      6,
                      (index) => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(informationKey),
                          ))
              ],
            ),
          ),

          /// Fourth Row (More)
          SizedBox(
            width: 200.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  moreKey,
                  style: textTheme.bodyLarge!.copyWith(fontWeight: bold),
                ),
                if (!isHalfScreen)
                  ...List.generate(
                      6,
                      (index) => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: Text(moreKey),
                          ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
