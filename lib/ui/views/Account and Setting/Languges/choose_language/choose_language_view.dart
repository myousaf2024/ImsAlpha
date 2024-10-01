import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/Account%20and%20Setting/Languges/choose_language/languageWidget.dart';
import 'package:stacked/stacked.dart';

import 'choose_language_viewmodel.dart';

class ChooseLanguageView extends StackedView<ChooseLanguageViewModel> {
  const ChooseLanguageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChooseLanguageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                viewModel.navigationService.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: kcPrimaryColor,
              )),
          centerTitle: true,
          title: Text(
            "Account & Settings",
            style: TextStyle(
                fontSize: getResponsiveExtraLargeFontSize(context),
                color: kcPrimaryColor,
                fontWeight: FontWeight.w700),
          ),
          automaticallyImplyLeading: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose Language",
                      style: TextStyle(
                          fontSize: getResponsiveExtraLargeFontSize(context),
                          color: kcDarkBlueColor,
                          fontWeight: FontWeight.w700),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: kcgrey),
                      ),
                      child: const Languagewidget(),
                    )
                  ])),
        ));
  }

  @override
  ChooseLanguageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChooseLanguageViewModel();
}
