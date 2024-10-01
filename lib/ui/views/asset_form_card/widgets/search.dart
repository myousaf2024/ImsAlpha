import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../asset_form_card_viewmodel.dart';

class AssetFormCardViewSearch extends ViewModelWidget<AssetFormCardViewModel> {
  const AssetFormCardViewSearch({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormCardViewModel viewModel,
  ) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Templates Here',
          hintStyle: const TextStyle(color: kcgrey),
          prefixIcon: const Icon(Icons.search, color: kcgrey),
          suffixIcon: const Icon(Icons.clear, color: kcgrey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: kcgrey),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: kcgrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: kcgrey),
          ),
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
        ),
        style: const TextStyle(color: kcgrey),
      ),
    );
  }
}
