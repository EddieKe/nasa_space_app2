import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ClimateStorytelling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            'Climate Storytelling: Impact of CO₂ Emissions',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 20),

          Row(
            children: [
              // Left Section: Text Content
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Purpose: To connect data with human experiences through compelling stories that demonstrate the real-world impacts of CO₂ emissions.\n\n'
                      'Content: Explore real-life case studies and narratives that bring to light the effects of rising CO₂ levels on essential ecosystems. '
                      'These stories dive into the impact of climate change on oceans, where increased CO₂ is driving acidification, threatening marine life, and affecting coastal communities dependent on fisheries.\n\n'
                      'Learn how agricultural sectors are facing challenges from unpredictable weather patterns and droughts, all exacerbated by the rise in greenhouse gases, leading to decreased crop yields and food insecurity in vulnerable regions.\n\n'
                      'Witness how entire communities are being displaced due to rising sea levels, impacting homes, infrastructure, and livelihoods, especially in coastal and island nations.\n\n'
                      'Together, these stories emphasize the urgency of addressing CO₂ emissions to safeguard the planet, biodiversity, and human well-being.',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Add navigation to learn more page
                      },
                      child: const Text('Learn More'),
                    ),
                  ],
                ),
              ),
              
              const SizedBox(width: 20),

              // Right Section: Image Carousel
              Expanded(
                flex: 3,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 400,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: [
                    'assets/images/ocean_story.jpg',
                    'assets/images/agriculture_story.jpg',
                    'assets/images/community_story.jpg'
                  ].map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(imagePath),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
