import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class EmailVerificationViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void recoverPassword() {
    _navigationService.replaceWithRecoverpasswordView();
  }
}
