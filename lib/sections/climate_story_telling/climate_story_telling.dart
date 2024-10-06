import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nasa_space_app2/sections/climate_story_telling/components/default_button_climate.dart';

class ClimateStorytelling extends StatelessWidget {
  const ClimateStorytelling({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Title
          Text(
            'Impact of CO₂ Emissions',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          const SizedBox(height: 20),

          // Carousel Section with separate content for each slide
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: [
              // Slide 1: Oceans
              _buildCarouselItem(
                context,
                'assets/images/oceanacidifications.jpg',
                'Ocean Acidification',
                'As CO₂ levels increase, oceans absorb much of it, causing acidification that threatens marine life. Coral reefs, fish populations, and coastal communities are at risk as rising temperatures and acidity levels disrupt ecosystems. Fisheries and livelihoods dependent on ocean biodiversity are deeply affected.',
                'Learn More About Oceans',
                () {
                  // Action for Learn More on Ocean Slide
                },
              ),

              // Slide 2: Agriculture
              _buildCarouselItem(
                context,
                'assets/images/agri.jpg',
                'Agriculture and Food Security',
                'Rising CO₂ and climate change lead to unpredictable weather patterns like droughts, floods, and storms, which impact agriculture. Farmers, especially in vulnerable regions, are experiencing decreased crop yields, threatening food security and driving up prices globally.',
                'Learn More About Agriculture',
                () {
                  // Action for Learn More on Agriculture Slide
                },
              ),

              // Slide 3: Community
              _buildCarouselItem(
                context,
                'assets/images/risingsealevels.jpg',
                'Rising Sea Levels',
                'Communities around the world, especially in coastal and island regions, are witnessing the impact of rising sea levels due to melting ice caps and glaciers. Homes and infrastructure are being lost, forcing mass migration and destabilizing economies.',
                'Learn More About Communities',
                () {
                  // Action for Learn More on Community Slide
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to create a carousel item with an image, text, and button
  Widget _buildCarouselItem(
    BuildContext context,
    String imagePath,
    String title,
    String description,
    String buttonText,
    VoidCallback onPressed,
  ) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              // Image Section
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
              ),
              
              const SizedBox(width: 16),

              // Content Section
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        description,
                        style: const TextStyle(fontSize: 16, color: Colors.black87),
                      ),
                      const SizedBox(height: 20),
                      DefaultButtonClimate(
                        text: (buttonText),
                        press: () {  },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
