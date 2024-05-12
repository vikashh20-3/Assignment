import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kollegeapply/utils/common_widgets/commonwidgets.dart';
import 'package:kollegeapply/utils/constant/assets.dart';
import 'package:kollegeapply/utils/constant/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return GetBuilder<HomeController>(
        init: HomeController(),
        assignId: true,
        builder: (logic) {
          return Scaffold(
              appBar: AppBar(
                title: Image.asset(AssetUrl.logo),
                actions: <Widget>[
                  Image.asset(AssetUrl.search),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    child: Image.asset(AssetUrl.profile),
                  )
                ],
                backgroundColor: colors.appbarPurple,
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: colors.gradientContainer,
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      )),
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.07, vertical: height * 0.04),
                      child: Column(
                        children: <Widget>[
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Hunt Colleges , ',
                                  style: TextStyle(
                                      color: colors.appbarPurple,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 41.0)),
                              TextSpan(
                                  text: 'tackle exams ',
                                  style: TextStyle(
                                      color: colors.yellowText,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 41.0)),
                              TextSpan(
                                  text:
                                      'like a boss , and embark on a hilariously epic journey through courses',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 41.0)),
                            ]),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.03),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                'Get Detailed Information on Top Colleges in India and Admission News. Get Alerts for Result, Cutoff and Forms for top Entrance, Government and Banking Exams',
                                style: TextStyle(
                                    color: colors.greyText, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        child: Stack(
                      children: [
                        commonwidgets.carousel(controller: HomeController()),
                        Positioned(
                            right: 2,
                            bottom: -8,
                            child: Image.asset(
                              AssetUrl.fireImage,
                              scale: 0.7,
                            ))
                      ],
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: width * 0.04, vertical: height * 0.04),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Top College  ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Text('View more',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: colors.yellowText)),
                                  Image.asset(AssetUrl.viewmore)
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: height * 0.03),
                            child: Stack(
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: ListView.builder(
                                      itemCount:
                                          controller.collegeTrades.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, i) {
                                        return commonwidgets.normalContainer(
                                            text: Text(controller
                                                .collegeTrades.value[i]));
                                      }),
                                ),
                                Positioned(
                                    left: 0,
                                    // top: -4,
                                    child: Image.asset(
                                      AssetUrl.pin,
                                      scale: 0.8,
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    commonwidgets.collegeDesc(context),
                    commonwidgets.collegeDesc(context),
                    commonwidgets.collegeDesc(context),
                    commonwidgets.collegeDesc(context),
                    commonwidgets.collegeDesc(context),
                    commonwidgets.collegeDesc(context),
                    Container(
                      width: width,
                      decoration:
                          BoxDecoration(color: colors.goalContainerColor),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                  right: width * 0.025,
                                  child: Image.asset(AssetUrl.cap)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: height * 0.04),
                                    child: commonwidgets.mediumText(
                                        text: "Choose Your Goal",
                                        style: TextStyle(
                                            fontSize: 40.0,
                                            color: colors.yellowText,
                                            fontWeight: FontWeight.w700,
                                            fontStyle: FontStyle.italic)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.2,
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext, int i) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.pinkAccent),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            AssetUrl.plant,
                                            scale: 0.7,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 12.0),
                                        child: Text("Agriculture",
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Center(
                                        child: Text("232 Courses",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        width: width,
                        height: height * 1.1,
                        decoration:
                            BoxDecoration(color: colors.clgDescContainer),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                height: height * 0.33,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    color: colors.white,
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Text(
                                            "Offline Colleges",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SizedBox(
                                            height: height * 0.27,
                                            child: ListView(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Chandigarh University',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'DIT University ',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 20.0),
                              child: Container(
                                height: height * 0.33,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    color: colors.white,
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Text(
                                            "Online/Distance Colleges",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SizedBox(
                                            height: height * 0.27,
                                            child: ListView(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Chandigarh University',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'DIT University ',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Indraprastha University of Technology',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Dehardun, Uttrakhand',
                                                        style: TextStyle(
                                                          fontSize: 14.0,
                                                          color: colors
                                                              .lightGreyText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                height: height * 0.35,
                                width: width * 0.9,
                                decoration: BoxDecoration(
                                    color: colors.white,
                                    borderRadius: BorderRadius.circular(12.0)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Text(
                                            "Online/Distance Colleges",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 26.0,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20.0),
                                          child: SizedBox(
                                            height: 250,
                                            child: ListView(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Bachelor of Design in UX/UI',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Duration:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '4 Yrs',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Department:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Design',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Bachelor of Design in UX/UI',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Duration:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '4 Yrs',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Department:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Design',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Bachelor of Design in UX/UI',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Duration:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '4 Yrs',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Department:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Design',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Bachelor of Design in UX/UI',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Duration:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '4 Yrs',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Department:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Design',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Bachelor of Design in UX/UI',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Duration:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '4 Yrs',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Department:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Design',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      vertical: 10.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Bachelor of Design in UX/UI',
                                                        style: TextStyle(
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Duration:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            '4 Yrs',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            'Department:',
                                                            style: TextStyle(
                                                              color: colors
                                                                  .lightGreyText,
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            'Design',
                                                            style: TextStyle(
                                                              fontSize: 16.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                            child: Obx(
                              () => Visibility(
                                  visible: controller.isVisible.value,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 22.0),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          label: Text("Enter your Query...")),
                                      controller: controller.searchController,
                                      onChanged: (value) {
                                        controller.updateSearchQuery(value);
                                      },
                                    ),
                                  )),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Latest News  ',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      controller.isVisible.value =
                                          !controller.isVisible.value;
                                      debugPrint(
                                          controller.isVisible.toString());

                                      debugPrint("search clicked");
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0),
                                      child: Image.asset(
                                        AssetUrl.search,
                                        color: colors.black,
                                      ),
                                    ),
                                  ),
                                  Text('View more',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: colors.yellowText)),
                                  Image.asset(AssetUrl.viewmore)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: SizedBox(
                        height: height * 0.52,
                        width: width * 0.9,
                        child: ListView.builder(
                            itemCount: controller.filteredItems.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (Builder, int i) {
                              return commonwidgets.latestNews(
                                  context: context,
                                  i: i,
                                  textheading: controller.filteredItems[i]);
                            }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Container(
                        child: commonwidgets.carousel2(
                            controller: HomeController()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upcoming Exams ',
                            style: TextStyle(
                              fontSize: 25,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text('View more',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: colors.yellowText)),
                              Image.asset(AssetUrl.viewmore)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: SizedBox(
                        height: height * 0.42,
                        width: width * 0.9,
                        child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (Builder, int i) {
                              return Stack(
                                children: [
                                  Positioned(
                                      left: width * 0.085,
                                      child: Container(
                                        width: width * 0.19,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: i % 2 == 0
                                                ? colors.examContainer
                                                : Colors.greenAccent),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 10,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: i % 2 == 0
                                                    ? colors.appbarPurple
                                                    : Colors.green,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 5.0),
                                              child: Text(
                                                "Online",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: i % 2 == 0
                                                        ? colors.appbarPurple
                                                        : Colors.green),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 10.0),
                                    child: Container(
                                      width: width * 0.7,
                                      height: height * 2.5,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: colors.examContainer),
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Row(
                                              children: [
                                                Image.asset(AssetUrl.gateExam),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 12.0),
                                                    child: Text(
                                                      'JEE Main Syllabus 2024 (Out), New Syllabus PDF Download for Chemistry',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                                vertical: 6.0),
                                            child: Text(
                                              'Competitive exam in India for admission to postgraduate program in engineering & technology',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: colors.descGrayText,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                                vertical: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  'Exam level',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: colors.greyText,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  'National',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                                vertical: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  'Application Starts ',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: colors.greyText,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  '31/06/2024',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                                vertical: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  'Exam Date',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: colors.greyText,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  '01/08/2024',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                                vertical: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  'Exam Duration',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: colors.greyText,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  '180 min',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12.0,
                                                vertical: 5.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  'Participating Colleges',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: colors.greyText,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  textAlign: TextAlign.left,
                                                  '19+',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      ),
                    ),
                    Container(
                      height: height * 0.8,
                      width: width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: colors.gradientContainerTwo,
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            AssetUrl.characterOne,
                            scale: 0.1,
                          ),
                          Positioned(
                            right: width * 0.010,
                            top: height * 0.050,
                            child: Container(
                              width: width * 0.8,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: 'From dreams to degrees: where ',
                                      style: TextStyle(
                                          color: colors.yellowText,
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 32.0)),
                                  TextSpan(
                                      text: 'success stories ',
                                      style: TextStyle(
                                          color: colors.appbarPurple,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 32.0)),
                                  TextSpan(
                                      text: 'came to life',
                                      style: TextStyle(
                                          color: colors.yellowText,
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 32.0)),
                                ]),
                              ),
                            ),
                          ),
                          Positioned(
                              right: width * 0.020,
                              bottom: height * 0.020,
                              child: commonwidgets.testimonial(context)),
                          Positioned(
                              right: width * 0.010,
                              top: height * 0.23,
                              child: commonwidgets.testimonial(context)),
                          Positioned(
                              left: width * 0.010,
                              bottom: height * 0.21,
                              child: commonwidgets.testimonial(context))
                        ],
                      ),
                    ),
                    Container(
                      height: height * 0.45,
                      width: width,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: colors.gradientContainerThree,
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      )),
                      child: Stack(
                        children: [
                          Positioned(
                              bottom: 0,
                              child: Image.asset(AssetUrl.characterTwo)),
                          Positioned(
                            top: height * 0.018,
                            left: width * 0.27,
                            child: Text(
                              "Stay upto date with all things",
                              style: TextStyle(
                                  color: colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          Positioned(
                            top: height * 0.050,
                            left: width * 0.050,
                            right: width * 0.050,
                            child: Text(
                              "Subscribe to our newsletter to get the updates immediately ",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Positioned(
                              top: height * 0.090,
                              left: width * 0.070,
                              right: width * 0.070,
                              child: commonwidgets.emailInput()),
                          Positioned(
                              top: height * 0.2,
                              left: width * 0.070,
                              right: width * 0.070,
                              child: commonwidgets.phoneNumberInput()),
                          Positioned(
                            bottom: height * 0.030,
                            left: width * 0.070,
                            right: width * 0.070,
                            child: Container(
                              height: height * 0.040,
                              decoration: BoxDecoration(
                                  color: colors.white,
                                  border: Border.all(color: colors.white),
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Center(
                                  child: Text(
                                "Submit",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: colors.appbarPurple),
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        // height: height * 0.5,
                        width: width,
                        decoration:
                            BoxDecoration(color: colors.bottomContainerColor),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(AssetUrl.logo),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  'Discover Discover Excellence: Latest Updates on India\'s Leading Colleges, Admissions, and Exam News',
                                  style: TextStyle(
                                      color: colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              commonwidgets.expansionColleges(),
                              commonwidgets.expansionUniversities(),
                              commonwidgets.expansionCourses(),
                              commonwidgets.expansionOthers(),
                              Image.asset(AssetUrl.bottomIcons),
                              Divider(),
                              Text(
                                "Built for India 🇮🇳",
                                style: TextStyle(
                                    fontSize: 18, color: colors.white),
                              ),
                              Text(
                                "©2024 KollegeApply. All rights reserved.",
                                style: TextStyle(
                                    fontSize: 18, color: colors.white),
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ));
        });
  }
}
