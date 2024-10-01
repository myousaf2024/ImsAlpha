import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/personal_viewmodel.dart';
import 'package:stacked/stacked.dart';

class RadioButtonPersonal extends ViewModelWidget<PersonalViewModel> {
  final String name;
  final int value;
  const RadioButtonPersonal({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalViewModel viewModel,
  ) {
    return RadioListTile<int>(
      dense: true,
      contentPadding: EdgeInsets.zero,
      visualDensity: const VisualDensity(horizontal: -4),
      title: Text(name),
      value: value,
      groupValue: viewModel.selectedRadioIndex,
      onChanged: (value) {
        if (value != null) {
          viewModel.setSelectedRadioIndex(value);
        }
      },
    );
  }
}
