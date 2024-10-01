import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HealthAndAfetyViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  List itemsList = [
    {"icon": trafficFlowIcon, "title": "Incident"},
    {"icon": nearMissIcon, "title": "Near Miss"},
    {"icon": hazardiousIcon, "title": "Hazardious"},
    {"icon": searchListIcon, "title": "O/I"},
    {"icon": customIcon, "title": "Custom"},
  ];
  navigateToIncidentsView(String title) {
    _navigationService.navigateToIncidentsView(title: title);
  }
}
