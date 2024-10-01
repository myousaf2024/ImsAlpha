import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:stacked/stacked.dart';

import 'bottom_navigation_bar_viewmodel.dart';

class BottomNavigationBarView
    extends StackedView<BottomNavigationBarViewModel> {
  const BottomNavigationBarView({super.key});

  @override
  Widget builder(
    BuildContext context,
    BottomNavigationBarViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: MyAppBar(
        title: viewModel.selectedIndex == 0 ? "IMSAlpha" : "IMSAlpha",
        leadingImage: menuIcon,
        leadingVariable: true,
      ),
      body: viewModel.getScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kcPrimaryColor,
        shape: const CircleBorder(),
        onPressed: viewModel.navigateToCreateAndWriteView,
        child: const CircleAvatar(
          radius: 15,
          backgroundColor: kcPrimaryColor,
          backgroundImage: AssetImage(plusIcon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            navButton(
              selected: viewModel.selectedIndex == 0,
              image: homeIcon,
              title: "Home",
              onPress: () {
                viewModel.updateIndex(0);
              },
            ),
            navButton(
              selected: viewModel.selectedIndex == 1,
              image: searchIcon,
              title: "Search",
              onPress: () {
                viewModel.updateIndex(1);
              },
            ),
            verticalSpaceMedium,
            navButton(
              selected: viewModel.selectedIndex == 2,
              image: notificationIcon,
              title: "Notification",
              onPress: () {
                viewModel.updateIndex(2);
              },
            ),
            navButton(
              selected: viewModel.selectedIndex == 3,
              image: profileIcon,
              title: "Profile",
              onPress: () {
                viewModel.updateIndex(3);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  BottomNavigationBarViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BottomNavigationBarViewModel();
}

Widget navButton(
    {required bool selected,
    required String image,
    required String title,
    required VoidCallback onPress}) {
  return GestureDetector(
    onTap: onPress,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ImageIcon(
          AssetImage(image),
          color: selected ? kcPrimaryColor : kcPrimaryColor.withOpacity(0.3),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: selected ? kcPrimaryColor : kcPrimaryColor.withOpacity(0.3),
          ),
        ),
      ],
    ),
  );
}
