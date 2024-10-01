import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AccountPasswordViewModel extends BaseViewModel {
  TextEditingController currentPasswordCtrl = TextEditingController();
  TextEditingController newPasswordCtrl = TextEditingController();
  TextEditingController retypePasswordCtrl = TextEditingController();
  final NavigationService navigationService = locator<NavigationService>();

  bool obsecure = true;
  bool obsecure1 = true;
  bool obsecure2 = true;

  void togglePasswordVisibility() {
    obsecure = !obsecure;
    notifyListeners();
  }

  void togglePasswordVisibility1() {
    obsecure1 = !obsecure;
    notifyListeners();
  }

  void togglePasswordVisibility2() {
    obsecure2 = !obsecure;
    notifyListeners();
  }
}
