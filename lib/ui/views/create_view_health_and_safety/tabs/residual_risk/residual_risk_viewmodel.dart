import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ResidualRiskViewModel extends BaseViewModel {
  String userinfoVar1 = 'Option 1';

  List<String> userinfo1 = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];
  final List<List<String>> matrix = [
    [
      "Severity",
      "-1\nMinor",
      "-2\nModerate",
      "-3\nSerious",
      "-4\nMajor",
      "-5\nCatastrophic"
    ],
    ["Almost Certain", "-5", "-10", "-15", "-6", "-25"],
    ["Likely", "-4", "-8", "-12", "-16", "-20"],
    ["Possible", "-3", "-6", "-6", "-14", "-15"],
    ["Unlikely", "-2", "-4", "-9", "-8", "-10"],
    ["Rare", "-1", "-2", "-3", "-4", "-5"],
  ];

  final List<List<String>> details = [
    [
      "Safety",
      "Near Miss",
      "Minor Injury",
      "Lost Time Accident",
      "Major Injury",
      "Fatality"
    ],
    [
      "Environment",
      "Potential Event",
      "Minor Event",
      "Important Event",
      "Significant Event",
      "Major Event"
    ],
    ["Cost", "1k \$", "10k \$", "100k \$", "300k \$", "500k \$"],
    ["Severity", "1", "2", "3", "4", "5"],
  ];

  Color getColorForCell(String cell) {
    switch (cell) {
      case "-1":
        return Colors.purple;
      case "-2":
      case "-3":
      case "-4":
      case "-5":
      case "-6":
        return Colors.green;
      case "-8":
      case "-9":
      case "-10":
      case "-12":
        return Colors.yellow;
      case "-14":
      case "-15":
        return Colors.orange;
      case "-16":
      case "-20":
        return Colors.red;
      case "-25":
        return Colors.black;
      default:
        return Colors.white;
    }
  }

  Color getTextColorForCell(Color cellColor) {
    return cellColor == Colors.black ? Colors.white : Colors.black;
  }

  void changeUserinfo1(String? value) {
    userinfoVar1 = value ?? userinfo1[0];
    notifyListeners();
  }
}
