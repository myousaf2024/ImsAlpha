import 'package:stacked/stacked.dart';

class ActionItemViewModel extends BaseViewModel {
  String teamMember = 'Option 1';
  List<String> teamOption = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];
  void changeUserinfo1(String? value) {
    teamMember = value ?? teamOption[0];
    notifyListeners();
  }
}
