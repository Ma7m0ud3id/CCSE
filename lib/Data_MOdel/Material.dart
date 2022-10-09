import 'package:computer_and_control_system/Data_MOdel/Lecture.dart';
import 'package:computer_and_control_system/Data_MOdel/Section.dart';

class Materiall {
  static const String CollectionNameMaterial='Material';
  String id;
  String title;
  String description;
  //int datetime;
  List<Lecture> listlecture;
  List<Section> listsection;
  bool isDone;

  Materiall({
    this.id = '',
    required this.listlecture,
    required this.listsection,
    required this.title,
    required this.description,
   // required this.datetime,
    this.isDone = false,
  });

  Materiall.fromJson(Map<String, dynamic> json)
      : this(
      listlecture:json['listlecture'] as List<Lecture> ,
      listsection :json['listsection'] as List<Section>,
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
     // datetime: json['date'] as int,
      isDone: json['isDone'] as bool);

  Map<String, dynamic> toJson() {
    return {
      'listlecture' :listlecture,
      'listsection':listsection,
      'id': id,
      'title': title,
      'description': description,
      //'date': datetime,
      'isDone': isDone
    };
  }
}