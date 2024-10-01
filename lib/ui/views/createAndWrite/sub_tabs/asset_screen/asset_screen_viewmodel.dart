import 'package:lms_alpha/app/app.locator.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AssetScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  navigateToAssetFormTemplatesView(bool islib, AssetPages pageType) {
    _navigationService.navigateToAssetFormTemplatesView(
        islib: islib, pageType: pageType, subtype: "");
  }

  navigateToMeetingView() {
    _navigationService.navigateToMeetingViewView();
  }
}
