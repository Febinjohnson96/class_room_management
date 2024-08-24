class SubjectModel {
  int? id;
  String? name;
  String? teacherName;
  int? credits;

  SubjectModel({this.id, this.name, this.teacherName, this.credits});

  SubjectModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    teacherName = json['teacher'];
    credits = json['credits'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'teacher_name': teacherName,
      'credits': credits,
    };
  }
}
