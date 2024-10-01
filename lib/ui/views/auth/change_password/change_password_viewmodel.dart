import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ChangePasswordViewModel extends BaseViewModel {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  final _navigationService = locator<NavigationService>();
  bool obsecure = true;
  bool obsecure1 = true;

  void togglePasswordVisibility() {
    obsecure = !obsecure;
    notifyListeners();
  }

  void togglePasswordVisibility1() {
    obsecure1 = !obsecure;
    notifyListeners();
  }

  void navigateToLogin() {
    _navigationService.replaceWithLoginView();
  }

  void replaceWithBottomNavigationBarView() {
    _navigationService.replaceWithBottomNavigationBarView();
  }
}
