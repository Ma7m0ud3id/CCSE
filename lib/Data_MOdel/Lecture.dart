class Lecture {
  static const String CollectionNameLecture='Lecture';
  String id;
  String title;
  String description;
  //int datetime;
  bool isDone;

  Lecture({
    this.id = '',
    required this.title,
    required this.description,
    //required this.datetime,
    this.isDone = false,
  });

  Lecture.fromJson(Map<String, dynamic> json)
      : this(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      //datetime: json['date'] as int,
      isDone: json['isDone'] as bool);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      //'date': datetime,
      'isDone': isDone
    };
  }
}
