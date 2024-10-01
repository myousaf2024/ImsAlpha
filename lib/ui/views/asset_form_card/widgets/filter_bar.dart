import 'package:flutter/material.dart';
import 'package:lms_alpha/gen/assets.gen.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../asset_form_card_viewmodel.dart';

class AssetFormCardViewFilterBar
    extends ViewModelWidget<AssetFormCardViewModel> {
  const AssetFormCardViewFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormCardViewModel viewModel,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Sort By',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        horizontalSpaceSmall,
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
