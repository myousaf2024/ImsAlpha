import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class ClanderViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToDetailCalenderView(int index) {
    _navigationService.navigateToDetailCalenderView(
      year: focusedYear.year,
      month: index + 1,
    );
  }

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
}
