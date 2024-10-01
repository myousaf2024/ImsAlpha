import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DetailCalenderViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  DateTime focusedYear = DateTime.now();
  void increaseYear() {
    focusedYear = DateTime(focusedYear.year + 1);
    notifyListeners();
  }

  void decreaseYear() {
    focusedYear = DateTime(focusedYear.year - 1);
    notifyListeners();
  }

  navigateToAddTaskView() {
    _navigationService.navigateToAddTaskView();
  }

  navigateToCalenderMonthlyView() {
    _navigationService.navigateToCalenderMonthlyView();
  }
}
