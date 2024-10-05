import 'package:flutter/material.dart';
import 'package:nasa_space_app2/constants.dart';
import 'package:nasa_space_app2/sections/about/about_section.dart';
import 'package:nasa_space_app2/sections/contact/contact_section.dart';
import 'package:nasa_space_app2/sections/feeedback/feedback_section.dart';
import 'package:nasa_space_app2/sections/topSection/components/top_section.dart';

import 'package:nasa_space_app2/sections/service/service_section.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            const SizedBox(height: kDefaultPadding * 2),
            const AboutSection(),
            const ServiceSection(),
        //    RecentWorkSection(),
            const FeedbackSection(),
            const SizedBox(height: kDefaultPadding),
            ContactSection(),
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}