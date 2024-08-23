import 'package:class_room_management/core/config/app_typography.dart';
import 'package:class_room_management/presentation/home/bloc/homescreen_bloc.dart';
import 'package:class_room_management/presentation/home/widget/card_widget.dart';
import 'package:class_room_management/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello,",
            style: AppTypography.sfPro17w600,
          ),
          Text(
            "Good Morning",
            style: AppTypography.sfPro22w400,
          ),
          SizedBox(
            height: 100.h,
          ),
          BlocBuilder<HomescreenBloc, HomescreenState>(
              builder: (context, state) {
            return state.when(
              initial: () => const CircularProgressIndicator(),
              onLoadState: (buttons) => Expanded(
                child: Center(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 250,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return CardWidget(
                        callback: () => context.read<HomescreenBloc>().add(
                            HomescreenEvent.onClickedButtons(
                                buttons[index].title)),
                        title: buttons[index].title ?? '',
                        iconPath: buttons[index].iconPath ?? '',
                        color: buttons[index].color ?? Colors.transparent,
                      );
                    },
                    itemCount: buttons.length,
                  ),
                ),
              ),
              routeChangeState: (routeName) {
                Future.microtask(() => context.go(routeName));
                return const SizedBox.shrink();
              },
            );
          })
        ],
      ),
    );
  }
}
