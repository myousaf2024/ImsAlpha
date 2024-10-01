import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class UpdateEmailViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  TextEditingController emailController = TextEditingController();

  void updateEmail() {
    navigationService.clearTillFirstAndShow(Routes.bottomNavigationBarView);
  }
}
