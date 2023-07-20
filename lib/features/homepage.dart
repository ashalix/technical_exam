import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:xtendly_tech_exam/features/xtendly_homepage_body.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/utils/enums.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';
import 'package:xtendly_tech_exam/widget/xtendly_nav_bar.dart';
import 'package:xtendly_tech_exam/widget/xtendly_pop_up_message.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        final mediaQuery = MediaQuery.of(context).size;
        final screenHeight = mediaQuery.height;
        final screenWidth = mediaQuery.width;
        final isHalfScreen = screenWidth < (windowsWidth! / 2);

        /// if the device mobile pop up will not show up
        if (!isHalfScreen) {
          showDialog(
            context: context,
            builder: (context) => XtendlyPopUpMessage(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final screenHeight = mediaQuery.height;
    final screenWidth = mediaQuery.width;
    final isHalfScreen = screenWidth < (windowsWidth! / 2);

    return Scaffold(
      drawer: isHalfScreen
          ? Drawer(
              child: ListView(
                children: AppBarOptions.values
                    .map((option) => ListTile(
                          title: Text(
                            option.getLabel(),
                            style: textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ))
                    .toList(),
              ),
            )
          : null,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          XtendlyHomepageBody(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            isHalfScreen: isHalfScreen,
            categories: Categories.values,
          ),
          XtendlyNavBar(
            appBarOptions: AppBarOptions.values,
            isHalfScreen: isHalfScreen,
            screenWidth: screenWidth,
          ),
          if (!isHalfScreen)
            Positioned(
              top: 5.0,
              child: SizedBox(
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: LoginSignup.values
                      .map(
                        (e) => Container(
                          color: Colors.transparent,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(e.getLabel()),
                              ),
                              if (e.index != 2) const Text(dividerVert),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
