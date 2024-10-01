import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyPasswordViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  TextEditingController passwordCtrl = TextEditingController();
  bool obsecure = true;
  void togglePasswordVisibility() {
    obsecure = !obsecure;
    notifyListeners();
  }

  void accountScreen() {
    navigationService.clearTillFirstAndShow(Routes.bottomNavigationBarView);
  }
}
