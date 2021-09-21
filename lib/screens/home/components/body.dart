import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/recommend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';

//https://stackoverflow.com/questions/45745448/how-do-i-stretch-an-image-to-fit-the-whole-background-100-height-x-100-width

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It'll provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      // TODO added at 06:57
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {}, //TODO
          ),
          //it will cover 40% of our total width
          RecommendPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

