class RecentWork {
  final String image, category, title;
  final int id;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title});
}

// Demo List of my works
List<RecentWork> recentWorks = [
 
 
  RecentWork(
    id: 3,
    title: "Our solution",
    category: "Solution 3",
    image: "assets/images/ocean2.jpg",
  ),
  RecentWork(
    id: 4,
    title: "Our Solution",
    category: "Solution 4",
    image: "assets/images/ocean2.jpg",
  ),
];