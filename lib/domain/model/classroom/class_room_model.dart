class ClassRoomModel {
  int? id;
  String? layout;
  String? name;
  int? size;
  String? subject;

  ClassRoomModel({this.id, this.layout, this.name, this.size, this.subject});

  ClassRoomModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    layout = json['layout'];
    name = json['name'];
    size = json['size'];
    subject = json['subject'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'layout': layout,
      'name': name,
      'size': size,
      'subject': subject,
    };
  }
}
