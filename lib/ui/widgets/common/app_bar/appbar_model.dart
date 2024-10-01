import 'package:lms_alpha/app/app.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MyAppBarModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  back() {
    navigationService.back();
  }
}
