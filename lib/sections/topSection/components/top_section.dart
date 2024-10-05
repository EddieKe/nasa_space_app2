
import 'package:flutter/material.dart';
import 'package:nasa_space_app2/constants.dart';
import 'package:nasa_space_app2/sections/topSection/components/menu.dart';




class TopSection extends StatelessWidget {
  const TopSection({super.key});

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
           Positioned(
             top: 0,
             child: Menu(),
           ),
          ],
        ),
      ),
    );
  }
}