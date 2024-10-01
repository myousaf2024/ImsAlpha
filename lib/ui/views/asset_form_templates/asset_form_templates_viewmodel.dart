import 'package:lms_alpha/app/app.router.dart';
import 'package:lms_alpha/gen/assets.gen.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../app/app.locator.dart';

class AssetFormTemplatesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  String? _selectedSortOption = 'Name';
  final List<String> _sortOptions = ['Name', 'Date Added'];

  final List<Map<String, String>> _assets = [
    {
      'name': 'Car',
      'image': Assets.images.carAsset.path,
      'subName': "Weekly 1"
    },
    {
      'name': 'Truck',
      'image': Assets.images.truckAsset.path,
      'subName': "Weekly 2"
    },
    {
      'name': 'Bike',
      'image': Assets.images.bikeAsset.path,
      'subName': "Weekly 3"
    },
    {
      'name': 'Crane',
      'image': Assets.images.craneAsset.path,
      'subName': "Weekly 4"
    },
    {
      'name': 'Tractor',
      'image': Assets.images.tractorAsset.path,
      'subName': "Weekly 5"
    },
  ];

  String? get selectedSortOption => _selectedSortOption;
  List<Map<String, String>> get assets => _assets;
  List<String> get sortOptions => _sortOptions;

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

  void navigateToAssetFormCardView(bool islib, AssetPages pageType) {
    _navigationService.navigateToAssetFormCardView(
        islib: islib, pageType: pageType);
  }

  void navigateToAssetTemplate(int index, bool islib, AssetPages pageType) {
    switch (index) {
      case 0:
        navigateToAssetFormCardView(islib, pageType); // Navigate to Car page
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
