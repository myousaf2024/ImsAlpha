import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class VerifyAccountViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void replaceWithOPT() {
    _navigationService.replaceWithPhoneNumberVerificationView();
  }

  void replaceWithVerifyPhoneAccountView() {
    _navigationService.replaceWithVerifyPhoneAccountView();
  }
}
