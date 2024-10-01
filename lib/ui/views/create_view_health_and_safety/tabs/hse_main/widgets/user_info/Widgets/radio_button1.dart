import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RadioButton1 extends ViewModelWidget<HseMainViewModel> {
  final String name;
  final int value;
  const RadioButton1({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
  ) {
    return RadioListTile<int>(
      dense: true,
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(horizontal: -4),
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
