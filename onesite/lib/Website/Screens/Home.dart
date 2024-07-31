import 'package:flutter/material.dart';
import 'package:onesite/Customs/Custom_text.dart';
import 'package:onesite/Website/Screens/applicationDevelopment.dart';
import 'package:onesite/Website/Screens/company.dart';
import 'package:onesite/Website/Screens/developmentlifecycle.dart';
import 'package:onesite/Website/Screens/ourServices.dart';
import 'package:onesite/Website/Screens/viewOurWork.dart';
import 'package:visibility_detector/visibility_detector.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _OurService = GlobalKey();
  final GlobalKey _company = GlobalKey();
  final GlobalKey _contact = GlobalKey();
  final GlobalKey _up = GlobalKey();
  void _ourser() {
    Scrollable.ensureVisible(_OurService.currentContext!,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }

  void _com() {
    Scrollable.ensureVisible(_company.currentContext!,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }

  void _con() {
    Scrollable.ensureVisible(_contact.currentContext!,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }

  void _uparrow() {
    Scrollable.ensureVisible(_up.currentContext!,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }

  final ScrollController _scrollController = ScrollController();
  List<bool> _isVisibleList = [
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ]; // Track visibility state of each item

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final text1 = (height + width) / 100;
    final text2 = (height + width) / 150;
    final text3 = (height + width) / 150;

    return SafeArea(
      child: Scaffold(
        floatingActionButton: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: _uparrow,
            icon: Icon(
              Icons.arrow_upward_rounded,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(81, 158, 158, 158),
              pinned: false,
              floating: true,
              snap: true,
              expandedHeight: 0,
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      color: Colors.white54,
                      size: text1,
                      text: "OneSpire",
                      weight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: _ourser,
                          child: CustomText(
                            color: Colors.white54,
                            size: text2,
                            text: "Our Services",
                            weight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: width / 30),
                        InkWell(
                          onTap: _com,
                          child: CustomText(
                            color: Colors.white54,
                            size: text2,
                            weight: FontWeight.w500,
                            text: "Company",
                          ),
                        ),
                        SizedBox(width: width / 30),
                        InkWell(
                          onTap: _con,
                          child: CustomText(
                            color: Colors.white54,
                            size: text2,
                            weight: FontWeight.w500,
                            text: "Contact",
                          ),
                        ),
                        SizedBox(width: width / 30),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildAnimatedContainer(
                        0, height / 2, width, "assets/Poster1.png"),
                    SizedBox(height: 50),
                    _buildAnimatedRow(1, height, width, text3),
                    SizedBox(height: 50),
                    _buildAnimatedWidget(
                        2,
                        Ourservices(
                          key: _OurService,
                        )),
                    SizedBox(height: 50),
                    _buildAnimatedWidget(3, FullDevelopmentLifecycle()),
                    SizedBox(height: 50),
                    _buildAnimatedWidget(4, Works()),
                    SizedBox(height: 50),
                    _buildAnimatedWidget(5, ApplicationDevelopmentStages()),
                    SizedBox(height: 50),
                    _buildAnimatedWidget(6, Company()),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedContainer(
      int index, double height, double width, String assetPath) {
    return VisibilityDetector(
      key: Key('container-$index'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.4) {
          setState(() {
            _isVisibleList[index] = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _isVisibleList[index] ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Container(
          key: _up,
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedRow(
      int index, double height, double width, double text3) {
    return VisibilityDetector(
      key: Key('row-$index'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.4) {
          setState(() {
            _isVisibleList[index] = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _isVisibleList[index] ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: height / 2,
              width: width / 2.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    color: Colors.white,
                    size: text3,
                    weight: FontWeight.w500,
                    text:
                        "OneSpire is a technology company which offers software product development and service including server applications, website/web-app applications, mobile applications, digital marketing, high performance transaction switching which can be used for prepaid/postpaid utility bill payments and much more..",
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: height / 15,
                      width: width / 10,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.amberAccent)),
                      child: Center(
                        child: CustomText(
                          color: Colors.white,
                          weight: FontWeight.w500,
                          size: text3,
                          text: "Our Services",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: height / 2,
              width: width / 2.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("assets/Poster2.jpg"),
                      fit: BoxFit.cover)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedWidget(int index, Widget widget) {
    return VisibilityDetector(
      key: Key('widget-$index'),
      onVisibilityChanged: (visibilityInfo) {
        if (visibilityInfo.visibleFraction > 0.5) {
          setState(() {
            _isVisibleList[index] = true;
          });
        }
      },
      child: AnimatedOpacity(
        opacity: _isVisibleList[index] ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: widget,
      ),
    );
  }
}