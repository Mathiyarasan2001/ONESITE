import 'package:flutter/material.dart';
import 'package:onesite/Customs/Custom_text.dart';

class Ourservices extends StatefulWidget {
  const Ourservices({super.key});

  @override
  State<Ourservices> createState() => _OurservicesState();
}

class _OurservicesState extends State<Ourservices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HoverContainer(
              image: "assets/OurServices/website.jpg",
              Text1: "Website development",
              Text2:
                  "We can design/develop websites after taking clear requirements from clients.",
            ),
            HoverContainer(
              image: "assets/OurServices/web.jpg",
              Text1: "Web Applications",
              Text2:
                  "We can develop web applications which can run on cloud platform and give their services to customers over the internet.",
            ),
            HoverContainer(
              image: "assets/OurServices/app.jpg",
              Text1: "Mobile Application",
              Text2:
                  "We can develop mobile applications that can run on Android and iO",
            ),
          ],
        ),
        SizedBox(height: 70),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HoverContainer(
              image: "assets/OurServices/server.jpg",
              Text1: "Server Applications",
              Text2:
                  "We can develop powerful, robust and reliable server applications with high performance.",
            ),
            HoverContainer(
              image: "assets/OurServices/Digital.jpg",
              Text1: "Digital Marketing",
              Text2:
                  "We can help clients in promoting their brand, products and services using the digital marketing platform.",
            ),
            HoverContainer(
              image: "assets/OurServices/Payment.jpg",
              Text1: "Payment Solutions",
              Text2:
                  "We can help customers who are looking for a prepaid/postpaid utility bill payment platform.",
            ),
          ],
        ),
      ],
    );
  }
}

class HoverContainer extends StatefulWidget {
  final String image;
  final String Text1;
  final String Text2;

  const HoverContainer({
    super.key,
    required this.image,
    required this.Text1,
    required this.Text2,
  });

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
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
        height: height / 2.5,
        width: width / 5,
        decoration: BoxDecoration(
          boxShadow: _isHovered
              ? [BoxShadow(blurRadius: 20, color: Colors.white)]
              : [BoxShadow(blurRadius: 20, color: Colors.transparent)],
          color: _isHovered ? Colors.white : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            // Image with Opacity
            Opacity(
              opacity: _isHovered ? 0.1 : .5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  color: Colors.black,
                  size: text1Size,
                  text: widget.Text1,
                  weight: FontWeight.w700,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CustomText(
                    color: Colors.black,
                    size: text2Size,
                    text: widget.Text2,
                    weight: FontWeight.w500,
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
