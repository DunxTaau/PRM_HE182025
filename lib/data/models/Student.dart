import 'Person.dart';

class Student extends Person{
  double math;
  double phic;
  double chem;

  Student({required super.id, required super.name, this.math =0, this.phic = 0, this.chem =0});
  Map<String, dynamic>tojson(){
    return{
      'id': this.id??"",
      'name': this.name??'',
      'math': this.math??0,
      'chem': this.chem??0,
      'phic': this.phic ??0
    };
  }
  factory Student.FromJson(Map<String,dynamic> json){
    return new Student(id:json['id'] as String, name:json['name'] as String, math:(json['math'] as num).toDouble(), phic:(json['phic'] as num).toDouble(), chem: (json['chem']as num).toDouble());
  }
}