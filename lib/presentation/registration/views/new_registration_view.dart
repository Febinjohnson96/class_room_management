import 'package:class_room_management/domain/model/student/student_model.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewRegistrationView extends StatefulWidget {
  const NewRegistrationView(
      {super.key,
      required this.studentNameController,
      required this.subjectController,
      this.onPressedCancel,
      required this.studentList,
      required this.subjectList});

  final TextEditingController studentNameController;
  final TextEditingController subjectController;
  final VoidCallback? onPressedCancel;
  final List<StudentModel> studentList;
  final List<SubjectModel> subjectList;

  @override
  State<NewRegistrationView> createState() => _NewRegistrationViewState();
}

class _NewRegistrationViewState extends State<NewRegistrationView> {
  StudentModel? _selectedStudent;
  SubjectModel? _selectedSubject;
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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DropdownSelector<StudentModel>(
              value: _selectedStudent,
              items: widget.studentList,
              itemToString: (student) => student.name ?? '',
              onChanged: (StudentModel? newValue) {
                setState(() {
                  _selectedStudent = newValue;
                });
              },
              hintText: 'Select Student',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DropdownSelector<SubjectModel>(
              value: _selectedSubject,
              items: widget.subjectList,
              itemToString: (subject) => subject.name ?? '',
              onChanged: (SubjectModel? newValue) {
                setState(() {
                  _selectedSubject = newValue;
                });
              },
              hintText: 'Select Subject',
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          TextButton(
              onPressed: () => widget.onPressedCancel?.call(),
              child: const Text("Cancel")),
        ],
      ),
    );
  }
}

class DropdownSelector<T> extends StatefulWidget {
  const DropdownSelector({
    super.key,
    required this.items,
    required this.onChanged,
    required this.itemToString,
    this.hintText,
    this.value,
  });

  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String Function(T) itemToString;
  final String? hintText;
  final T? value;

  @override
  _DropdownSelectorState<T> createState() => _DropdownSelectorState<T>();
}

class _DropdownSelectorState<T> extends State<DropdownSelector<T>> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DropdownButton<T>(
        value: widget.value,
        hint: widget.hintText != null ? Text(widget.hintText!) : null,
        onChanged: widget.onChanged,
        items: widget.items.map<DropdownMenuItem<T>>((T item) {
          return DropdownMenuItem<T>(
            value: item,
            child: Text(widget.itemToString(item)),
          );
        }).toList(),
      ),
    );
  }
}
