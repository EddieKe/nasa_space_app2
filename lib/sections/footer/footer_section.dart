import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width
      height: 500, // Set footer height
      color: Colors.black, // Background color
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Padding around the content
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Call to Action
          const Text(
            'Join Us in the Fight Against Climate Change!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16), // Space between text and buttons

          // Call to Action Button
          ElevatedButton(
            onPressed: () {
              // Add your action here
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Button color
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Button padding
            ),
            child: const Text(
              'Take Action Now',
              style: TextStyle(fontSize: 18),
            ),
          ),

          const Spacer(), // Add space between the button and links

          // Footer Links
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Our Mission',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Our Team',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Our Impact',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Us',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Nairobi Kenya',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Phone: +2547-0567-8900',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    'Email: info@climateaction.com',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20), // Space between links and copyright

          // Copyright Text
          const Center(
            child: Text(
              '© 2024 Inviticus Climate Action. All rights reserved.',
              style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
