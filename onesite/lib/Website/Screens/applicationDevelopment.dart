import 'package:flutter/material.dart';
import 'package:onesite/Customs/Custom_text.dart';

class ApplicationDevelopmentStages extends StatelessWidget {
  const ApplicationDevelopmentStages({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height / 1.1,
      width: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height / 1.1,
            width: width / 3.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HoverContainer1(
                    Text1: "Analysis",
                    Text2:
                        "We write specific for development, taking into account the business processes and technologies of the customer and the needs of users."),
                HoverContainer1(
                    Text1: "Design",
                    Text2:
                        "We adapt the customer's corporate identitiy to the platform guidelines. We draw convienent and understandable interfaces."),
                HoverContainer1(
                    Text1: "Development",
                    Text2:
                        "We create an extensible architure, write clean and stable code. We integrate with customer technologies.")
              ],
            ),
          ),
          Container(
            height: height / 1.5,
            width: width / 3.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/OurServices/mobile.png"),
                    fit: BoxFit.fill)),
          ),
          Container(
            height: height / 1.1,
            width: width / 3.2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                HoverContainer1(
                    Text1: "Testing",
                    Text2:
                        "We carry out functional testing and do bug fixes.We adapt the application to different phone resolutions."),
                HoverContainer1(
                    Text1: "Launching",
                    Text2:
                        "We design the application page and publish it in the App Store and Google Play stores."),
                HoverContainer1(
                    Text1: "Support",
                    Text2:
                        "We monitor the stability of the application,update it for new devices and versions of IOS and Andriod.")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HoverContainer1 extends StatefulWidget {
  final String Text1;
  final String Text2;

  const HoverContainer1({
    super.key,
    required this.Text1,
    required this.Text2,
  });

  @override
  _HoverContainer1State createState() => _HoverContainer1State();
}

class _HoverContainer1State extends State<HoverContainer1> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final text1Size = (height + width) / 100;
    final text2Size = (height + width) / 150;

    return MouseRegion(
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: height / 5,
        width: width / 5,
        decoration: BoxDecoration(
          boxShadow: _isHovered
              ? [BoxShadow(blurRadius: 20, color: Colors.amber)]
              : [BoxShadow(blurRadius: 2, color: Colors.black)],
          color: _isHovered ? Colors.white : Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: _isHovered ? 0.1 : .5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: CustomText(
                    color: Colors.black,
                    size: text1Size,
                    text: widget.Text1,
                    weight: FontWeight.w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Center(
                    child: CustomText(
                      color: Colors.black,
                      size: text2Size,
                      text: widget.Text2,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
