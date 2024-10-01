import 'package:stacked/stacked.dart';

class HseMainViewModel extends BaseViewModel {
  String site = 'Option 1';
  String busniessField = 'Option 1';
  String report = 'Option 1';
  bool checkvalue1 = false;
  bool checkvalue2 = false;
  bool checkvalue3 = false;
  bool checkvalue4 = false;
  bool checkvalue5 = false;

  bool check2value1 = false;
  bool check2value2 = false;
  bool check2value3 = false;
  bool check2value4 = false;
  bool check2value5 = false;

  bool check3value1 = false;
  bool check3value2 = false;
  bool check3value3 = false;
  bool check3value4 = false;
  bool check3value5 = false;

  bool clerify1 = false;
  bool clerify2 = false;
  bool clerify3 = false;
  bool clerify4 = false;
  bool clerify5 = false;

  String userinfoVar1 = 'Option 1';

  List<String> userinfo1 = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  int selectedRadioIndex = 0;
  int selectedRadioIndex1 = 0;

  void changeUserinfo1(String? value) {
    userinfoVar1 = value ?? userinfo1[0];
    notifyListeners();
  }

  void setSelectedRadioIndex(int index) {
    selectedRadioIndex = index;
    notifyListeners();
  }

  void setSelectedRadioIndex1(int index) {
    selectedRadioIndex1 = index;
    notifyListeners();
  }

//CHECKBOX1

  void changeCheckValue1(bool? value) {
    checkvalue1 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue2(bool? value) {
    checkvalue2 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue3(bool? value) {
    checkvalue3 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue4(bool? value) {
    checkvalue4 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue5(bool? value) {
    checkvalue5 = value ?? false;
    notifyListeners();
  }

//CHECKBOX2

  void changeCheck2Value1(bool? value) {
    check2value1 = value ?? false;
    notifyListeners();
  }

  void changeCheck2Value2(bool? value) {
    check2value2 = value ?? false;
    notifyListeners();
  }

  void changeCheck2Value3(bool? value) {
    check2value3 = value ?? false;
    notifyListeners();
  }

  void changeCheck2Value4(bool? value) {
    check2value4 = value ?? false;
    notifyListeners();
  }

  void changeCheck2Value5(bool? value) {
    check2value5 = value ?? false;
    notifyListeners();
  }

//CHECKBOX3

  void changeCheck3Value1(bool? value) {
    check3value1 = value ?? false;
    notifyListeners();
  }

  void changeCheck3Value2(bool? value) {
    check3value2 = value ?? false;
    notifyListeners();
  }

  void changeCheck3Value3(bool? value) {
    check3value3 = value ?? false;
    notifyListeners();
  }

  void changeCheck3Value4(bool? value) {
    check3value4 = value ?? false;
    notifyListeners();
  }

  void changeCheck3Value5(bool? value) {
    check3value5 = value ?? false;
    notifyListeners();
  }

//CLERIFY  CHECKBOX
  void clerifyValue1(bool? value) {
    clerify1 = value ?? false;
    notifyListeners();
  }

  void clerifyValue2(bool? value) {
    clerify2 = value ?? false;
    notifyListeners();
  }

  void clerifyValue3(bool? value) {
    clerify3 = value ?? false;
    notifyListeners();
  }

  void clerifyValue4(bool? value) {
    clerify4 = value ?? false;
    notifyListeners();
  }

  void clerifyValue5(bool? value) {
    clerify5 = value ?? false;
    notifyListeners();
  }

  // Buniness detail

  List<String> siteOption = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  List<String> reportDetail = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  void changeSite(String? value) {
    site = value ?? siteOption[0];
    notifyListeners();
  }

  void changeReport(String? value) {
    report = value ?? reportDetail[0];
    notifyListeners();
  }

  // Busniess Info
  List<String> businessInfo = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  void business(String? value) {
    busniessField = value ?? businessInfo[0];
    notifyListeners();
  }
}
