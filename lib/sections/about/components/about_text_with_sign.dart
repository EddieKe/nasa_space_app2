import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Problem Statement",
          style: Theme.of(context)
              .textTheme
              .displayMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        
        // Wrapping the image with SizedBox and BoxFit to minimize space usage
        SizedBox(
          width: 100, // Adjust width to control the size of the image
          child: Image.asset(
            "assets/images/ocean.jpg",
            fit: BoxFit.contain, // Contain ensures it fits within the box without overflowing
          ),
        ),
      ],
    );
  }
}
