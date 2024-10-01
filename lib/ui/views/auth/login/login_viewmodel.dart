import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../../services/auth_service.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _loginService = locator<AuthService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String tenantID = 'Item 1';
  List<String> tenantIdItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  void changeTenantId(String? value) {
    tenantID = value ?? tenantIdItems[0];
    notifyListeners();
  }

  void navigateToVerifyAccount() {
    _navigationService.replaceWithVerifyAccountView();
  }

  void replaceWithRecoverpasswordView() {
    _navigationService.replaceWithRecoverpasswordView();
  }

  Future<void> login() async {
    setBusy(true);
    String username = emailController.text.trim();
    String password = passwordController.text.trim();
    final response = await _loginService.login(username, password);
    try {
      if (response != null) {
        navigateToDashBoardView();
      } else {
        print('Login failed');
      }
    } catch (e) {
      print('Error during login: $e');
    } finally {
      setBusy(false);
    }
  }

  void navigateToDashBoardView() {
    _navigationService.navigateToBottomNavigationBarView();
  }
}
