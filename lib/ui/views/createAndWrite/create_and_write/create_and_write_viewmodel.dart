import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CreateAndWriteViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  final List<Map<String, String>> itemsList = [
    {"icon": hSRreportsIcon, "title": "H & S\nReports"},
    {"icon": complianceIcon, "title": "Compliance"},
    {"icon": formsIcon, "title": "Forms"},
    {"icon": assetsIcon, "title": "Assets"},
    {"icon": kpiIcon, "title": "KPI"},
    {"icon": documentsIcon, "title": "Documents"},
    {"icon": communicationIcon, "title": "Communication"},
    {"icon": cmsIndexSettingsIcon, "title": "CMS"},
    {"icon": inspectionIcon, "title": "Inspection"},
    {"icon": fmsIcon, "title": "FSM"},
    {"icon": calendarIcon, "title": "Calendar"},
    {"icon": hSRreportsIcon, "title": "NRC"},
  ];

  late final List<void Function()> functionsList;

  CreateAndWriteViewModel() {
    functionsList = [
      () => navigateToHealthAndSafetyView(),
      () => navigateToHealthAndSafetyView(),
      () => navigateToAssetScreenView(AssetPages.Forms),
      () => navigateToAssetScreenView(AssetPages.Assets),
      () => navigateToHealthAndSafetyView(),
      () => navigateToHealthAndSafetyView(),
      () => navigateTCommunication(),
      () => navigateToHealthAndSafetyView(),
      () => navigateToHealthAndSafetyView(),
      () => navigateToHealthAndSafetyView(),
      () => navigateTCCalender(),
      () => navigateToHealthAndSafetyView(),
    ];
  }

  void navigateToHealthAndSafetyView() {
    _navigationService.navigateToHealthAndAfetyView();
  }

  void navigateToAssetScreenView(AssetPages pageType) {
    _navigationService.navigateToAssetScreenView(pageType: pageType);
  }

  void navigateTCommunication() {
    _navigationService.navigateToCommunicationView();
  }

  void navigateTCCalender() {
    _navigationService.navigateToClanderView();
  }
}
