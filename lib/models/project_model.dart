class Project {
  final String name;
  final String location;
  final String description;
  final String image;

  Project(
      {required this.name,
      required this.location,
      required this.description,
      required this.image});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
        name: json['name'],
        location: json['location'],
        description: json['description'],
        image: json['image']);
  }
}
