import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:lms_alpha/ui/views/Account%20and%20Setting/account_and_setting/account_and_setting_view.dart';
import 'package:lms_alpha/ui/views/dash_board/dash_board_view.dart';
import 'package:lms_alpha/ui/views/search/search_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BottomNavigationBarViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int selectedIndex = 0;

  void updateIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  Widget getScreen() {
    switch (selectedIndex) {
      case 0:
        return DashBoardView();
      case 1:
        return SearchView();
      case 2:
        return Container();
      case 3:
        return const AccountAndSettingView();
      default:
        return Container();
    }
  }

  void navigateToCreateAndWriteView() {
    _navigationService.navigateToCreateAndWriteView();
  }
}
