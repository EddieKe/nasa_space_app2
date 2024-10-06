import 'package:flutter/material.dart';
import 'package:nasa_space_app2/constants.dart';
import 'package:nasa_space_app2/sections/topSection/components/google_maps.dart';
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
          image: AssetImage("assets/images/ocean2.jpg"),
        ),
      ),
      child: Stack(
        children: [
          const Positioned.fill(
            child: GoogleMapScreen(),
          ),
          // Overlay Menu on top of Google Map
          Positioned(
            top: 0,
            child: Container(
              margin: const EdgeInsets.only(top: kDefaultPadding),
              width: 1200,
              child: const Menu(),
            ),
          ),
        ],
      ),
    );
  }
}
