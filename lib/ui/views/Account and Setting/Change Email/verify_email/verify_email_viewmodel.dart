import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyEmailViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  TextEditingController passwordCtrl = TextEditingController();

  void verify() {
    navigationService.navigateToUpdateEmailView();
  }
}
