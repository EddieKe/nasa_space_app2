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
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            "Our \nStory",
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        const SizedBox(height: kDefaultPadding * 2),

        // Wrapping the image with SizedBox and BoxFit to minimize space usage
        DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: SizedBox(
            width: 200,
            height: 200, // Adjust width to control the size of the image
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Image.asset(
                "assets/images/ocean2.jpg",
                fit: BoxFit
                    .contain, // Contain ensures it fits within the box without overflowing
              ),
            ),
          ),
        ),
      ],
    );
  }
}
