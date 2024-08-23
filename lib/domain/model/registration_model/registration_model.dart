class RegistrationModel {
  int? id;
  int? student;
  int? subject;

  RegistrationModel({this.id, this.student, this.subject});

  factory RegistrationModel.fromJson(Map<String, dynamic> json) {
    return RegistrationModel(
      id: json['id'],
      student: json['student'],
      subject: json['subject'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'student': student,
      'subject': subject,
    };
  }
}
