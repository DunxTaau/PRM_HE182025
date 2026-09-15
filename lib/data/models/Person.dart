import 'package:slot2/data/models/Student.dart';
import 'package:slot2/data/models/Teacher.dart';

enum PersonType {
  Teacher,
  Student
}
class Person{
  final String id;
  final String name;
  Person({required this.id,required this.name});
  factory Person.Create(PersonType personType,Map<String, dynamic> value ){
    if(personType == PersonType.Teacher)
      return new Teacher(id: value["id"] as String, name: value["name"] as String);
    else
      return Student.FromJson(value);
  }

}