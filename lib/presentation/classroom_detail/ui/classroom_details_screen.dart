import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/domain/model/classroom/class_room_model.dart';
import 'package:class_room_management/domain/model/subject_model/subject_model.dart';
import 'package:class_room_management/presentation/classroom_detail/bloc/class_room_detail_bloc.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ClassroomDetailsScreen extends StatefulWidget {
  const ClassroomDetailsScreen({super.key, required this.classRoom});
  final ClassRoomModel classRoom;

  @override
  State<ClassroomDetailsScreen> createState() => _ClassroomDetailsScreenState();
}

class _ClassroomDetailsScreenState extends State<ClassroomDetailsScreen> {
  SubjectModel? _selectedSubject;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return AppScaffold(
      child: Column(
        children: [
          SizedBox(
            width: width,
            height: 50.h,
            child: Row(
              children: [
                IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              ],
            ),
          ),
          Text(widget.classRoom.name ?? '', style: AppTypography.sfPro17w600),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 358.w,
            height: 80.h,
            decoration: BoxDecoration(
                color: const Color(0xFFD1D1D1),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  BlocBuilder<ClassRoomDetailBloc, ClassRoomDetailState>(
                      builder: (context, state) {
                    return state.when(
                        initial: () =>
                            const Center(child: CircularProgressIndicator()),
                        onLoadState: (classRoom, subjectList) {
                          return SizedBox(
                            height: 140.h,
                            width: 150.w,
                            child: DropdownSelector<SubjectModel>(
                              value: _selectedSubject,
                              items: subjectList,
                              itemToString: (subject) => subject.name ?? '',
                              onChanged: (SubjectModel? newValue) {
                                setState(() {
                                  _selectedSubject = newValue;
                                });
                              },
                              hintText: 'Add Subject',
                            ),
                          );
                        });
                  }),
                  const Spacer(),
                  Container(
                    width: 86.w,
                    height: 39.h,
                    decoration: BoxDecoration(
                        color: const Color(0xFFAAC9BF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text("Add",
                          style: AppTypography.sfPro17w600
                              .copyWith(color: const Color(0xFF0FAB76))),
                    ),
                  )
                ],
              ),
            ),
          ),
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
          final subject = item as SubjectModel; // Cast item to SubjectModel
          return DropdownMenuItem<T>(
            value: item,
            child: SizedBox(
              width: 100.w,
              child: ListTile(
                title: Text(subject.name ?? ''), // Title as subjectName
                subtitle:
                    Text(subject.teacherName ?? ''), // Subtitle as teacherName
                contentPadding: EdgeInsets.zero, // Adjust padding if needed
                visualDensity: VisualDensity.compact, // Adjust density if needed
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
