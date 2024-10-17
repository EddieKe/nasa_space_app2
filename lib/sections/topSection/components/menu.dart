import 'package:flutter/material.dart';

import '../../../constants.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> menuItems = [
    "Home",
    "About",
    "Our Solutions",
    "Carbon(iv) Emissions",
    "Effects",
    "Contact Us"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: const BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
           colors: [
              Color.fromARGB(255, 235, 194, 15),
              Color.fromARGB(255, 109, 94, 4), 
            ],

          ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItem(index),
        ),
      ),
    );
  }

  Widget buildMenuItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: const BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                menuItems[index],
                style: const TextStyle(fontSize: 20, color: kTextColor),
              ),
              // Hover
             // AnimatedPositioned(
             //   duration: const Duration(milliseconds: 200),
              //  left: 0,
              //  right: 0,
              //  bottom:
              //      selectedIndex != index && hoverIndex == index ? -20 : -32,
              //  child: Image.asset("assets/images/jpg.peg"),
             // ),
              // Select
             // AnimatedPositioned(
             //   duration: const Duration(milliseconds: 200),
             //   left: 0,
              //  right: 0,
              //  bottom: selectedIndex == index ? -2 : -32,
              //  child: Image.asset("assets/images/ocean.jpg"),
             // ),
            ],
          ),
        ),
      );
}