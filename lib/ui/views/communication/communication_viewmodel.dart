import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';
import '../../../gen/assets.gen.dart';
import '../../common/enums.dart';

class CommunicationViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  late final List<void Function()> functionsList;
  CommunicationViewModel() {
    functionsList = [
      () => navigateToAssetScreenView(AssetPages.Meatings)(),
      () => navigateToAssetScreenView(AssetPages.Meatings)(),
      () => navigateToAssetScreenView(AssetPages.Forms),
      () => navigateToAssetScreenView(AssetPages.Assets),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateTCommunication(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
    ];
  }

  List itemsList = [
    {"icon": Assets.images.meeting, "title": "Meetings"},
    {"icon": Assets.images.drill, "title": "Drill"},
    {"icon": Assets.images.notification, "title": "Alerts"},
    {"icon": Assets.images.annoucements, "title": "Annoucment"},
  ];
  navigateToAssetScreenView(AssetPages pageType) {
    _navigationService.navigateToAssetScreenView(pageType: pageType);
  }
}
