import 'package:carousel_slider/carousel_slider.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';
import 'package:kollegeapply/app/modules/home/controllers/home_controller.dart';
import 'package:kollegeapply/utils/constant/assets.dart';
import 'package:kollegeapply/utils/constant/colors.dart';

CommonWidgets commonwidgets = CommonWidgets();

class CommonWidgets {
  Text mediumText(
      {Color,
      text,
      fontSize,
      textAlign,
      maxLines,
      fontWeight,
      style,
      OverFlow = TextOverflow.visible}) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: true,
      style: style,
    );
  }

  Widget carousel({required HomeController controller}) {
    return CarouselSlider(
      options: CarouselOptions(height: 300.0, autoPlay: true),
      items: controller.imagePaths.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ));
          },
        );
      }).toList(),
    );
  }

  Widget carousel2({required HomeController controller}) {
    return CarouselSlider(
      options: CarouselOptions(height: 150.0, autoPlay: true),
      items: controller.imagePaths2.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  i,
                  fit: BoxFit.cover,
                ));
          },
        );
      }).toList(),
    );
  }

  Widget normalContainer({required Text text}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
            color: colors.normalContainer,
            borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Center(child: text),
        ),
      ),
    );
  }

  Widget collegeDesc(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.height * 0.01),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(color: colors.containerBorder),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AssetUrl.fireImage),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    commonwidgets.mediumText(
                        text: 'Indraprasth Institute of Technology... ',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w600)),
                    commonwidgets.mediumText(
                        text: 'New Delhi , India ',
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500,
                            color: colors.lightGreyText)),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("University",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              color: colors.lightGreyText)),
                      Text("University of Delhi",
                          style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: colors.black)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('No of Courses',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors.lightGreyText)),
                          Text('14',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: colors.black))
                        ],
                      ),
                      VerticalDivider(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Established In',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: colors.lightGreyText)),
                          Text('1967',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: colors.black))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.1,
                    decoration: BoxDecoration(
                        color: colors.normalContainer,
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Center(
                      child: Text(
                        'A++',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: colors.normalContainer,
                          borderRadius: BorderRadius.circular(8.0)),
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Center(
                        child: Text(
                          'UGC',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: colors.normalContainer,
                        borderRadius: BorderRadius.circular(8.0)),
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Center(
                      child: Text(
                        'A++',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: colors.normalContainer,
                          borderRadius: BorderRadius.circular(8.0)),
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Center(
                        child: Text(
                          'UGC',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget testimonial(context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      height: MediaQuery.of(context).size.height * 0.17,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: Colors.white),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(AssetUrl.profile2),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vanshika khola",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Chandigarh University",
                      style: TextStyle(
                          fontSize: 16,
                          color: colors.greyText,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempo",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            "Email",
            style: TextStyle(color: colors.white, fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: colors.white),
              borderRadius: BorderRadius.circular(12.0)),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Image.asset(AssetUrl.mail),
                label: Text(
                  "itsvikashydv@gmail.com",
                  style: TextStyle(color: colors.white),
                )),
          ),
        ),
      ],
    );
  }

  Widget phoneNumberInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            "Phone Number",
            style: TextStyle(color: colors.white, fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: colors.white),
              borderRadius: BorderRadius.circular(12.0)),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Image.asset(AssetUrl.phn),
                label: Text(
                  "+91 9991462409",
                  style: TextStyle(color: colors.white),
                )),
          ),
        ),
      ],
    );
  }

  Widget expansionColleges() {
    return ExpansionTileItem(
        trailing: Image.asset(AssetUrl.down),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.transparent)),
        title: Text(
          "Top Colleges",
          style: TextStyle(
              color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        children: [
          Text(
            "IIMB",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "IIHMR",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Delhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Indira Gandhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Chandigarh University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ]);
  }

  Widget expansionCourses() {
    return ExpansionTileItem(
        trailing: Image.asset(AssetUrl.down),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.transparent)),
        title: Text(
          "Top Courses",
          style: TextStyle(
              color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        children: [
          Text(
            "IIMB",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "IIHMR",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Delhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Indira Gandhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Chandigarh University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ]);
  }

  Widget expansionUniversities() {
    return ExpansionTileItem(
        trailing: Image.asset(AssetUrl.down),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.transparent)),
        title: Text(
          "Top Universities",
          style: TextStyle(
              color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        children: [
          Text(
            "IIMB",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "IIHMR",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Delhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Indira Gandhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Chandigarh University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ]);
  }

  Widget expansionOthers() {
    return ExpansionTileItem(
        trailing: Image.asset(AssetUrl.down),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.transparent)),
        title: Text(
          "Others",
          style: TextStyle(
              color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        children: [
          Text(
            "IIMB",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "IIHMR",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Delhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Indira Gandhi University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          Text(
            "Chandigarh University",
            style: TextStyle(
                color: colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ]);
  }

  Widget latestNews(
      {required i,
      required BuildContext context,
      required String textheading}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 3.2,
        decoration: BoxDecoration(
            border: Border.all(color: colors.yellowText),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          children: [
            i % 2 == 0
                ? Container(
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(29.0),
                          topRight: Radius.circular(29.0),
                        ),
                        color: colors.yellowText),
                    child: Center(
                      child: Text(
                        "Last date to apply-Apr 23,2024",
                        style: TextStyle(
                            fontSize: 16.0,
                            color: colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                : Container(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                textheading,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              child: Text(
                'JEE Main follows the same syllabus as NCERT. In 2020, NCERT rationalized Class 11 and 12 syllabus because of the academic disruptions caused due to the COVID-19 pandemic. However, no change was made to the JEE syll...',
                style: TextStyle(
                    fontSize: 16,
                    color: colors.descGrayText,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'Posted By :',
                    style: TextStyle(
                        fontSize: 18,
                        color: colors.appbarPurple,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              child: Row(
                children: [
                  Image.asset(AssetUrl.board),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      textAlign: TextAlign.left,
                      'CBSE',
                      style: TextStyle(
                          fontSize: 18,
                          // color: colors.appbarPurple,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
              child: Row(
                children: [
                  Text(
                    textAlign: TextAlign.left,
                    'May 5 , 2024',
                    style: TextStyle(
                        fontSize: 18,
                        color: colors.greyText,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
