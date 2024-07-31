import 'package:flutter/material.dart';
import 'package:onesite/Customs/Custom_text.dart';

class FullDevelopmentLifecycle extends StatefulWidget {
  const FullDevelopmentLifecycle({super.key});

  @override
  _FullDevelopmentLifecycleState createState() =>
      _FullDevelopmentLifecycleState();
}

class _FullDevelopmentLifecycleState extends State<FullDevelopmentLifecycle> {
  final Map<int, bool> _isHovered = {};

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final text1 = (height + width) / 100;
    final text2 = (height + width) / 120;
    final text3 = (height + width) / 150;

    return Container(
      height: height / 2,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height / 2,
                width: width / 2.1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(
                      color: Colors.black,
                      size: text1,
                      text: "Full Development Cycle",
                      weight: FontWeight.bold,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(
                          color: Colors.black,
                          size: text2,
                          text: "Web ",
                          weight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: height / 100,
                        ),
                        CustomText(
                          color: Colors.black,
                          size: text3,
                          text: "Flutter/Python/PHP/HTML/CSS/NodeJs",
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomText(
                          color: Colors.black,
                          size: text2,
                          text: "Mobile",
                          weight: FontWeight.w700,
                        ),
                        SizedBox(
                          height: height / 100,
                        ),
                        CustomText(
                          color: Colors.black,
                          size: text3,
                          text: "Flutter/Python/PHP/HTML/CSS/NodeJs/Fireabse",
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: height / 2,
                width: width / 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(7, (index) {
                    final texts = [
                      "IOS Development",
                      "Android Development",
                      "Web Development",
                      "UI/UX Design",
                      "Testing",
                      "Launch",
                      "IT Consulting"
                    ];
                    return MouseRegion(
                      onEnter: (_) {
                        setState(() {
                          _isHovered[index] = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          _isHovered[index] = false;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: _isHovered[index] == true
                              ? [BoxShadow(color: Colors.blue, blurRadius: 2)]
                              : [],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              color: Colors.black,
                              size: text2,
                              text: texts[index],
                              weight: FontWeight.w500,
                            ),
                            SizedBox(
                              width: width / 100,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.blue,
                              size: text1,
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
