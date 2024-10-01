import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../investigation_viewmodel.dart';

class RadioButtonInvestigation extends ViewModelWidget<InvestigationViewModel> {
  final String name;
  final int value;
  const RadioButtonInvestigation(
      {Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    InvestigationViewModel viewModel,
  ) {
    return RadioListTile<int>(
      dense: true,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity(horizontal: -4),
      title: Text(name),
      value: value,
      groupValue: viewModel.selectedRadioIndex1,
      onChanged: (value) {
        if (value != null) {
          viewModel.setSelectedRadioIndex1(value);
        }
      },
    );
  }
}
