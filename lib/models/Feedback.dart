import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback({
    required this.name,
    required this.review,
    required this.userPic,
    required this.id,
    required this.color,
  });
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ronald Thompson",
    review: 'I found the data visualizations really engaging and informative. The interactive maps helped me understand the regional impacts much better.',
    userPic: "assets/images/ocean.jpg",
    color: const Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Sarah Johnson",
    review: 'This platform is fantastic! The storytelling aspect really brought the data to life. I especially appreciated the section on agriculture.',
    userPic: "assets/images/ocean.jpg",
    color: const Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Emily Davis",
    review: 'I think the website has great potential, but I found it a bit overwhelming at first. A guided tour would be helpful for new users.',
    userPic: "assets/images/ocean.jpg",
    color: const Color(0xFFFFE0E0),
  ),
];
