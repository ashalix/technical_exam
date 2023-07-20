import 'package:flutter/material.dart';
import 'package:xtendly_tech_exam/utils/constants.dart';
import 'package:xtendly_tech_exam/utils/theme.dart';

class XtendlyPopUpMessage extends StatefulWidget {
  final double screenWidth;
  final double screenHeight;

  const XtendlyPopUpMessage({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
  }) : super(key: key);

  @override
  State<XtendlyPopUpMessage> createState() => _XtendlyPopUpMessageState();
}

class _XtendlyPopUpMessageState extends State<XtendlyPopUpMessage> with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 4,
    vsync: this,
  );

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.zero,
      backgroundColor: Colors.transparent,
      content: Container(
        height: widget.screenHeight / 2,
        width: widget.screenWidth / 2.5,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: blueColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
              child: TabBar(
                controller: tabController,
                labelColor: blueColor,
                labelPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                labelStyle: const TextStyle(backgroundColor: whiteColor),
                unselectedLabelStyle: const TextStyle(backgroundColor: blueColor),
                unselectedLabelColor: whiteColor,
                tabs: tabBars
                    .map(
                      (e) => Text(
                        e,
                        style: textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(
              child: Container(
                color: whiteColor,
                margin: const EdgeInsets.only(
                  left: 10.0,
                  right: 10.0,
                  bottom: 10.0,
                ),
                child: TabBarView(
                  controller: tabController,
                  children: List.generate(
                      4,
                      (index) => Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: List.generate(
                                2,
                                (index) => Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 100.0,
                                            width: 100.0,
                                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                                          ),
                                          horizontalSpace50,
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                collectionKey,
                                                textAlign: TextAlign.left,
                                                style: textTheme.bodyLarge!.copyWith(fontWeight: bold),
                                              ),
                                              SizedBox(
                                                height: 80.0,
                                                width: (widget.screenWidth / 2.5) / 1.5,
                                                child: Text(
                                                  categoryMessage,
                                                  textAlign: TextAlign.left,
                                                  style: textTheme.bodySmall,
                                                  overflow: TextOverflow.ellipsis,
                                                  maxLines: 4,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.all(Colors.blue)),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      readMoreKey,
                                                      style: TextStyle(color: whiteColor),
                                                    ),
                                                  ),
                                                  horizontalSpace20,
                                                  ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor: MaterialStateProperty.all(Colors.indigo)),
                                                    onPressed: () {},
                                                    child: const Text(
                                                      applyKey,
                                                      style: TextStyle(color: whiteColor),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
