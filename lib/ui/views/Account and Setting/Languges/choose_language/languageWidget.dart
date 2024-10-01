import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'choose_language_viewmodel.dart';

class Languagewidget extends ViewModelWidget<ChooseLanguageViewModel> {
  const Languagewidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    ChooseLanguageViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 47,
            width: 327,
            decoration: BoxDecoration(
              color: kcPrimaryColor,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                "Select Language",
                style: TextStyle(color: kcwhiteColor),
              ),
            ),
          ),
          verticalSpaceSmall,
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: viewModel.countryList.length,
                itemBuilder: (context, index) {
                  return Text(
                    viewModel.countryList[index],
                    style: const TextStyle(color: kcPrimaryColor),
                  );
                }),
          )
        ],
      ),
    );
  }
}
