import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyPhoneNumberViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();

  void verifyPasswordNumber() {
    navigationService.navigateToVerifyPasswordView();
  }
}
