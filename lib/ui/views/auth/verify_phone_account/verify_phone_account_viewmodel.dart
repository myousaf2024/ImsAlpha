import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyPhoneAccountViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void navigateToEmailVarification() {
    _navigationService.replaceWithEmailVerificationView();
  }

  void replaceWithPhoneNumberVerificationView() {
    _navigationService.replaceWithVerifyAccountView();
  }
}
