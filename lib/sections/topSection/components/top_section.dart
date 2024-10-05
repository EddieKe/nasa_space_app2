
import 'package:flutter/material.dart';
import 'package:nasa_space_app2/constants.dart';
import 'package:nasa_space_app2/sections/topSection/components/logo_blur.dart';
import 'package:nasa_space_app2/sections/topSection/components/menu.dart';
import 'package:nasa_space_app2/sections/topSection/person_pic.dart';



class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: const BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/ocean.jpg"),
        ),
      ),
      child: Container(
        margin: const EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child:  Stack(
          children: [
           const LogoAndBlurBox(size: const Size(23,23)),
           const Positioned(
             bottom: 0,
             right: 0,
             child: PersonPic(),
           ),
           Positioned(
             bottom: 0,
             child: Menu(),
           ),
          ],
        ),
      ),
    );
  }
}