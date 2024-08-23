import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewRegistrationView extends StatelessWidget {
  const NewRegistrationView(
      {super.key,
      required this.studentNameController,
      required this.subjectController,
      this.onPressedCancel});

  final TextEditingController studentNameController;
  final TextEditingController subjectController;
  final VoidCallback? onPressedCancel;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("New Registration"),
          SizedBox(
            height: 20.h,
          ),
          RegistrationTextField(
            hintText: "RR",
            controller: studentNameController,
          ),
          SizedBox(
            height: 20.h,
          ),
          RegistrationTextField(
            hintText: "EE",
            controller: subjectController,
          ),
          SizedBox(
            height: 20.h,
          ),
          TextButton(
              onPressed: () => onPressedCancel?.call(), child: const Text("Cancel")),
        ],
      ),
    );
  }
}

class RegistrationTextField extends StatelessWidget {
  const RegistrationTextField({super.key, required this.controller, required this.hintText});

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: const BorderSide(
            color: Colors.blue, // Border color when focused
          ),
        ),
      ),
    );
  }
}
