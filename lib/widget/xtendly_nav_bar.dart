import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/utils/enums.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';

class XtendlyNavBar extends StatefulWidget {
  final bool isHalfScreen;
  final double screenWidth;
  final List<AppBarOptions> appBarOptions;

  const XtendlyNavBar({
    required this.isHalfScreen,
    required this.screenWidth,
    required this.appBarOptions,
    Key? key,
  }) : super(key: key);

  @override
  State<XtendlyNavBar> createState() => _XtendlyNavBarState();
}

class _XtendlyNavBarState extends State<XtendlyNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      height: appBarHeight,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        if (!widget.isHalfScreen)
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Image.asset(appLogo),
          )
        else
          Builder(
              builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openDrawer(),
                    icon: Image.asset(drawerIcon),
                  )),
        if (!widget.isHalfScreen)
          SizedBox(
            width: widget.screenWidth / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: widget.appBarOptions
                  .map((option) => Text(
                        option.getLabel(),
                        style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                      ))
                  .toList(),
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(appLogo),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (!widget.isHalfScreen) ...[
              horizontalSpace20,
              const SizedBox(
                height: 30.0,
                width: 250.0,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5.0),
                    prefixIcon: Icon(Icons.search),
                    hintText: searchKey,
                  ),
                ),
              ),
              horizontalSpace20,
            ],
            const Icon(Icons.shopping_bag_outlined),
            horizontalSpace20,
            const Icon(Icons.star_border_outlined),
            horizontalSpace20,
          ],
        ),
      ]),
    );
  }

// _getColor(int tabIndex, List<String> tabBars, String tabName) {
//   print(tabIndex);
//   print(tabBars.indexOf(tabName));
//   print(tabIndex == tabBars.indexOf(tabName));
// }
}
