class StudentModel {
  int? age;
  String? email;
  int? id;
  String? name;

  StudentModel({this.age, this.email, this.id, this.name});

  StudentModel.fromJson(Map<String, dynamic> json) {
    age = json['age'];
    email = json['email'];
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'age': age,
      'email': email,
      'id': id,
      'name': name,
    };
  }
}
