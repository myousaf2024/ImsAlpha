import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UpdatePhoneNumberViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  TextEditingController passwordCtrl = TextEditingController();

  void verifyNumber() {
    navigationService.navigateToVerifyPhoneNumberView();
  }
}
