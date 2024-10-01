import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../template_details_viewmodel.dart';

class AssetRadio extends ViewModelWidget<TemplateDetailsViewModel> {
  final String name;
  final int value;
  const AssetRadio({Key? key, required this.name, required this.value})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
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
