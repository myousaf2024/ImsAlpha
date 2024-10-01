import 'package:flutter/material.dart';
import 'package:lms_alpha/app/app.router.dart';
import 'package:lms_alpha/gen/assets.gen.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class AssetFormCardViewModel extends BaseViewModel {
  AssetFormCardViewModel(this.pageType);
  final _navigationService = locator<NavigationService>();

  AssetPages pageType = AssetPages.Assets;
  String? _selectedSortOption = 'Name';
  final List<String> _sortOptions = ['Name', 'Date Added'];
  final List<Map<String, String>> _assets = [
    {
      'templateNo': '2334354555',
      'name': 'Car',
      'description': 'This template is related to car assets.',
      'status': 'Open',
      'image': Assets.images.carAsset.path,
    },
    {
      'templateNo': '2334354555',
      'name': 'Truck',
      'description': 'This template is related to truck assets.',
      'status': 'Open',
      'image': Assets.images.truckAsset.path,
    },
    {
      'templateNo': '2334354555',
      'name': 'Bike',
      'description': 'This template is related to bike assets.',
      'status': 'Open',
      'image': Assets.images.bikeAsset.path,
    },
    {
      'templateNo': '2334354555',
      'name': 'Crane',
      'description': 'This template is related to crane assets.',
      'status': 'Open',
      'image': Assets.images.craneAsset.path,
    },
  ];
  List<StatusItem> get statusItems => [
        StatusItem('1', 'Total\nReports', Colors.green),
        StatusItem('4', 'Completed\nForms', Colors.green),
        StatusItem('3', 'In-Progress\nForms', Colors.yellow),
        StatusItem('4', 'Rejected\nForms', Colors.red),
        StatusItem('1', 'Not\nApplicable', Colors.grey),
      ];
  List<String> get sortOptions => _sortOptions;
  List<Map<String, String>> get assets => _assets;
  String? get selectedSortOption => _selectedSortOption;

  void onSortOptionChanged(String? newValue) {
    if (newValue == null) return;

    _selectedSortOption = newValue;
    sortAssets();
    notifyListeners();
  }

  void sortAssets() {
    if (_selectedSortOption == 'Name') {
      _assets.sort((a, b) => a['name']!.compareTo(b['name']!));
    }
  }

  void navigateToTemplateDetailsView(bool islib) {
    _navigationService.navigateToTemplateDetailsView(
      islib: islib,
      pageType: pageType,
    );
  }

  void navigateToTemplateDetail(int index, bool islib) {
    switch (index) {
      case 0:
        navigateToTemplateDetailsView(islib); // Navigate to Car page
        break;
      case 1:
        //  _navigationService.navigateToTruckPage(); // Navigate to Truck page
        break;
      case 2:
        // _navigationService.navigateToBikePage(); // Navigate to Bike page
        break;
      case 3:
        // _navigationService.navigateToCranePage(); // Navigate to Crane page
        break;
      case 4:
        //  _navigationService.navigateToTractorPage(); // Navigate to Tractor page
        break;
      default:
        // _navigationService.navigateToDefaultPage(); // Fallback navigation
        break;
    }
  }
}

class StatusItem {
  final String count;
  final String label;
  final Color color;

  StatusItem(this.count, this.label, this.color);
}
