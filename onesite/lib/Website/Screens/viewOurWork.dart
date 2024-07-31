import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:onesite/Customs/Custom_text.dart';

class Works extends StatelessWidget {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final text1 = (height + width) / 100;
    final text2 = (height + width) / 150;
    return Container(
      height: height / 5,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomText(
            color: Colors.white,
            size: text1,
            text:
                "Amazing clients have allowed us to produce work we are proud of.",
            weight: FontWeight.bold,
          ),
          FilledButton(
              style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(200, 30),
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: CustomText(
                color: Colors.black,
                size: text2,
                text: "View our Works",
                weight: FontWeight.bold,
              )),
          CustomText(
            color: Colors.white,
            size: text1,
            text: "Who we’ve worked with.",
            weight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
