import 'package:stacked/stacked.dart';

class CalenderMonthlyViewModel extends BaseViewModel {
  DateTime currentDate = DateTime.now();
  DateTime focusedDate = DateTime.now();

  void increaseMonth() {
    focusedDate = DateTime(focusedDate.year, focusedDate.month + 1);
    notifyListeners();
  }

  void decreaseMonth() {
    focusedDate = DateTime(focusedDate.year, focusedDate.month - 1);
    notifyListeners();
  }

  void increaseDay() {
    focusedDate =
        DateTime(focusedDate.year, focusedDate.month, focusedDate.day + 7);
    notifyListeners();
  }

  void decreaseDay() {
    focusedDate =
        DateTime(focusedDate.year, focusedDate.month, focusedDate.day - 7);
    notifyListeners();
  }
}
