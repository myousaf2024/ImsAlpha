import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RecoverpasswordViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void backToLogin() {
    _navigationService.replaceWithBackToLoginView();
  }
}
