import 'package:stacked/stacked.dart';

class CapaViewModel extends BaseViewModel {
  bool checkvalue1 = false;

  void changeCheckValue1(bool? value) {
    checkvalue1 = value ?? false;
    notifyListeners();
  }

  String userinfoVar1 = 'Option 1';

  List<String> userinfo1 = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  void changeUserinfo1(String? value) {
    userinfoVar1 = value ?? userinfo1[0];
    notifyListeners();
  }
}
