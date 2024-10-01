import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:lms_alpha/app/app.locator.dart';

class AccountAndSettingViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void changePasswordAccount() {
    _navigationService.navigateToAccountPasswordView();
  }

  void chooseLanguage() {
    _navigationService.navigateToChooseLanguageView();
  }

  void updatePhoneNumber() {
    _navigationService.navigateToUpdatePhoneNumberView();
  }

  void contactSupport() {
    _navigationService.navigateToContactSupportView();
  }

  void updateEmail() {
    _navigationService.navigateToSendVerificationCodeView();
  }
}
