import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class IncidentsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  int selectedTab = 0;
  final List<Map<String, String>> existingData = [
    {"Sr No": "1", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "2", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "3", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "4", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "5", "Report No": "1273237283723766", "Status": "Rejected"},
  ];
  final List<Map<String, String>> draftsData = [
    {"Sr No": "1", "Report No": "1273237283723766", "Status": "Rejected"},
    {"Sr No": "2", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "3", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "4", "Report No": "1273237283723766", "Status": "Approved"},
    {"Sr No": "5", "Report No": "1273237283723766", "Status": "Approved"},
  ];
  changeTab(int i) {
    selectedTab = i;
    notifyListeners();
  }

  navigateToHealthandSafety(String title) {
    _navigationService.navigateToCreateViewHealthAndSafetyView(title: title);
  }
}
