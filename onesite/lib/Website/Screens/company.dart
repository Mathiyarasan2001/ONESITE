import 'package:flutter/material.dart';
import 'package:onesite/Customs/Custom_text.dart';

class Company extends StatelessWidget {
  const Company({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final text1 = (height + width) / 120;
    final text2 = (height + width) / 150;
    final text = (height + width) / 100;
    return SizedBox(
      height: height / .7,
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height / 2,
            width: width / 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: width / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/OurServices/pexels-fotios-photos-16129877.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: width / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/OurServices/pexels-knownasovan-57690.jpg"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width / 1.1,
            child: CustomText(
              color: Colors.white,
              size: text,
              text:
                  "OneSpire is a technology company which offers software product development and service including server applications, website/web-app applications, mobile applications, digital marketing, high performance transaction switching which can be used for prepaid/postpaid utility bill payments and much more..",
              weight: FontWeight.w700,
            ),
          ),
          CustomText(
            color: Colors.white,
            size: text,
            text: "Our Values ",
            weight: FontWeight.w700,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.white,
                      size: text1,
                      text: "Quality. ",
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    CustomText(
                      color: Colors.white,
                      size: text2,
                      text: "We offer quality work, products and services.",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.white,
                      size: text1,
                      text: "Performance.",
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    CustomText(
                      color: Colors.white,
                      size: text2,
                      text: "Our product offers good performance.",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.white,
                      size: text1,
                      text: "Reliable.",
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    CustomText(
                      color: Colors.white,
                      size: text2,
                      text: "Our products are highly reliable and robust.",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.white,
                      size: text1,
                      text: "Commitment.",
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    CustomText(
                      color: Colors.white,
                      size: text2,
                      text: "We offer great commitment to our work.",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.white,
                      size: text1,
                      text: "Support.",
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    CustomText(
                      color: Colors.white,
                      size: text2,
                      text: "We offer good support for our clients.",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.white,
                      size: text1,
                      text: "Brave.",
                      weight: FontWeight.w700,
                    ),
                    SizedBox(
                      height: height / 100,
                    ),
                    CustomText(
                      color: Colors.white,
                      size: text2,
                      text: "To take up new challenges, ideas and innovations.",
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
