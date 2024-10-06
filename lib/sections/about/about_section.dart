import 'package:flutter/material.dart';
import 'package:nasa_space_app2/components/default_button.dart';
import 'package:nasa_space_app2/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Once a natural component of Earth’s atmosphere, carbon dioxide (CO₂) has transformed into a key player in the climate crisis. Over the years, industrialization and human activities have dramatically increased CO₂ emissions, tipping the balance of our planet. This once-trace gas now significantly contributes to global warming, affecting weather patterns and sea levels, and threatening our very existence.",
                ),
              ),
              ExperienceCard(numOfExp: "08"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "As we confront this urgent reality, understanding CO₂’s evolution is essential for envisioning a sustainable future. Each year, new data highlights the rising temperatures and shifting ecosystems driven by increased emissions. Our project aims to illuminate this journey, empowering individuals to engage with the story of CO₂ and take action toward a healthier planet. The time to act is now, and every step we take counts.",
                ),
              ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: DefaultButton(
                  imageSrc: "assets/images/ocean2.jpg",
                  text: "View the Charts!",
                  press: () {},
                ),
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
            ],
          ),
        ],
      ),
    );
  }
}
