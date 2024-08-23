import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/core/config/route_name.dart';
import 'package:class_room_management/presentation/registration/bloc/registration_bloc.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

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
                    onPressed: () => context.go(RouteName.home),
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
              ],
            ),
          ),
          Text(
            "Registrations",
            style: AppTypography.sfPro22w4700,
          ),
          BlocBuilder<RegistrationBloc, RegistrationState>(
              builder: (context, state) {
            return Expanded(
              child: state.when(
                  initial: () => const Center(child: CircularProgressIndicator()),
                  onLoadState: (registrationList) {
                    if (registrationList.isEmpty) {
                      return Center(
                        child: Text(
                          "No Data",
                          style: AppTypography.sfPro17w600,
                        ),
                      );
                    } else {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Text(
                                registrationList[index].student.toString());
                          },
                          itemCount: registrationList.length);
                    }
                  }),
            );
          }),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 177.w,
              height: 48.h,
              decoration: BoxDecoration(
                color: const Color(0xFF007AFF).withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Text(
                "New Registration",
                style: AppTypography.sfPro17w600
                    .copyWith(color: const Color(0xFF007AFF)),
              )),
            ),
          )
        ],
      ),
    );
  }
}
