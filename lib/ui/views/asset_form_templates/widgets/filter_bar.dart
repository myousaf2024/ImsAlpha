import 'package:flutter/material.dart';
import 'package:lms_alpha/gen/assets.gen.dart';
import 'package:stacked/stacked.dart';
import '../asset_form_templates_viewmodel.dart';

class AssetFormTemplatesViewFilterBar
    extends ViewModelWidget<AssetFormTemplatesViewModel> {
  const AssetFormTemplatesViewFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormTemplatesViewModel viewModel,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Sort By',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        Container(
          height: 28,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.grey),
          ),
          padding: const EdgeInsets.only(left: 3, right: 3),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
                value: viewModel.selectedSortOption,
                items: viewModel.sortOptions.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  viewModel.onSortOptionChanged(newValue);
                },
                icon: Assets.icons.arrowDropDown.image(height: 10)),
          ),
        )
      ],
    );
  }
}
