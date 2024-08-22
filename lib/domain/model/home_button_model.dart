import 'package:class_room_management/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeButtonModel {
  String? title;
  String? iconPath;
  Color? color;

  HomeButtonModel({this.title, this.iconPath, this.color});

  List<HomeButtonModel> homeButtons = [
      HomeButtonModel(
        title: "Students",
        color: const Color(0xFFAAC9BF),
        iconPath: Assets.svg.homeScreen.student,
      ),
      HomeButtonModel(
        title: "Subjects",
        color: const Color(0xFFD8EBFD),
        iconPath: Assets.svg.homeScreen.subject,
      ),
      HomeButtonModel(
        title: "Classrooms",
        color: const Color(0xFFFFE0DD),
        iconPath: Assets.svg.homeScreen.classroom,
      ),
      HomeButtonModel(
        title: "Registrations",
        color: const Color(0xFFFFF3D9),
        iconPath: Assets.svg.homeScreen.registration,
      ),
    ];
}
