import 'package:flutter/material.dart';
import 'package:onesite/Customs/Custom_text.dart';
import 'package:onesite/Screens/ourServices.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final Height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    final Text1 = (Height + width) / 100;
    final Text2 = (Height + width) / 150;
    final Text3 = (Height + width) / 100;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: Colors.black,
              )),
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
              expandedHeight: 90,
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      color: Colors.white54,
                      size: Text1,
                      text: "OneSpire",
                      weight: FontWeight.bold,
                    ),
                    Row(
                      children: [
                        CustomText(
                          color: Colors.white54,
                          size: Text2,
                          text: "Our Services",
                          weight: FontWeight.w500,
                        ),
                        SizedBox(width: MediaQuery.sizeOf(context).width / 30),
                        CustomText(
                            color: Colors.white54,
                            size: Text2,
                            weight: FontWeight.w500,
                            text: "Company"),
                        SizedBox(width: MediaQuery.sizeOf(context).width / 30),
                        CustomText(
                            color: Colors.white54,
                            size: Text2,
                            weight: FontWeight.w500,
                            text: "Contact"),
                        SizedBox(width: MediaQuery.sizeOf(context).width / 30),
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
                    Container(
                      height: MediaQuery.sizeOf(context).height / 2,
                      width: MediaQuery.sizeOf(context).width / 1,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Poster1.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 50),
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height / 2,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  color: Colors.white,
                                  size: Text3,
                                  weight: FontWeight.w500,
                                  text:
                                      "OneSpire is a technology company which offers software product development and service including server applications, website/web-app applications, mobile applications, digital marketing, high performance transaction switching which can be used for prepaid/postpaid utility bill payments and much more..",
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height / 15,
                                    width:
                                        MediaQuery.sizeOf(context).width / 10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.amberAccent)),
                                    child: Center(
                                      child: CustomText(
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        size: Text2,
                                        text: "Our Services",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height / 2,
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/Poster2.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.sizeOf(context).height / 2,
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/Poster2.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 50),
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height / 2,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  color: Colors.white,
                                  weight: FontWeight.w500,
                                  size: Text3,
                                  text:
                                      "OneSpire is a technology company which offers software product development and service including server applications, website/web-app applications, mobile applications, digital marketing, high performance transaction switching which can be used for prepaid/postpaid utility bill payments and much more..",
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height / 15,
                                    width:
                                        MediaQuery.sizeOf(context).width / 10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.amberAccent)),
                                    child: Center(
                                      child: CustomText(
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        size: Text2,
                                        text: "Company",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 10,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50, top: 50),
                          child: SizedBox(
                            height: MediaQuery.sizeOf(context).height / 2,
                            width: MediaQuery.sizeOf(context).width / 2.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  color: Colors.white,
                                  size: Text3,
                                  weight: FontWeight.w500,
                                  text:
                                      "OneSpire is a technology company which offers software product development and service including server applications, website/web-app applications, mobile applications, digital marketing, high performance transaction switching which can be used for prepaid/postpaid utility bill payments and much more..",
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height:
                                        MediaQuery.sizeOf(context).height / 15,
                                    width:
                                        MediaQuery.sizeOf(context).width / 10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.amberAccent)),
                                    child: Center(
                                      child: CustomText(
                                        color: Colors.white,
                                        weight: FontWeight.w500,
                                        size: Text2,
                                        text: "Contact",
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.sizeOf(context).height / 2,
                          width: MediaQuery.sizeOf(context).width / 2.5,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/Poster2.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 10,
                        )
                      ],
                    ),
                    Ourservices()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
