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
    id: 1,
    title: "Our Solutions",
    category: "SOLUTION 1",
    image: "assets/images/ocean.jpg",
  ),
  RecentWork(
    id: 2,
    title: "New & Fresh Looking Portfolio indeed at the end",
    category: "Solution 2",
    image: "assets/images/ocean.jpg",
  ),
  RecentWork(
    id: 3,
    title: "Our solution",
    category: "Solution 3",
    image: "assets/images/ocean.jpg",
  ),
  RecentWork(
    id: 4,
    title: "Our Solution",
    category: "Solution 4",
    image: "assets/images/ocean.jpg",
  ),
];