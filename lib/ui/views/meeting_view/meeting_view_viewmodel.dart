import 'package:lms_alpha/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../gen/assets.gen.dart';
import '../../common/enums.dart';

class MeetingViewViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  late final List<void Function()> functionsList;
  MeetingViewViewModel() {
    functionsList = [
      () => navigateToAssetFormTemplatesView(
            false,
            AssetPages.Meatings,
            "HSE-Meeting Weekly",
          )(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Tool Box Meeting")(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Safety Meeting")(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Pre or Post Job Meeting")(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Management Meeting")(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Committee Meeting")(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Team Meeting")(),
      () => navigateToAssetFormTemplatesView(
          false, AssetPages.Meatings, "Other Meeting")(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
      // () => navigateToHealthAndSafetyView(),
    ];
  }

  List itemsList = [
    {"icon": Assets.images.hseMeeting, "title": "HSE-Meeting Weekly"},
    {"icon": Assets.images.toolBox, "title": "Tool Box Meeting"},
    {"icon": Assets.images.safety, "title": "Safety Meeting"},
    {"icon": Assets.images.prePost, "title": "Pre or Post Job Meeting"},
    {"icon": Assets.images.management, "title": "Management Meeting"},
    {"icon": Assets.images.commetiee, "title": "Committee Meeting"},
    {"icon": Assets.images.team, "title": "Team Meeting"},
    {"icon": Assets.images.other, "title": "Other Meeting"},
  ];

  navigateToAssetScreenView(AssetPages pageType) {
    _navigationService.navigateToAssetScreenView(pageType: pageType);
  }

  navigateToAssetFormTemplatesView(
      bool islib, AssetPages pageType, subtypePage) {
    _navigationService.navigateToAssetFormTemplatesView(
        islib: islib, pageType: pageType, subtype: subtypePage);
  }
}
