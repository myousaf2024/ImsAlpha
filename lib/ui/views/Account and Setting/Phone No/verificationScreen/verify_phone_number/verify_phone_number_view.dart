import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'verify_phone_number_viewmodel.dart';

class VerifyPhoneNumberView extends StackedView<VerifyPhoneNumberViewModel> {
  const VerifyPhoneNumberView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyPhoneNumberViewModel viewModel,
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
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                "Verify Your Number",
                style: TextStyle(color: kcDarkBlueColor, fontSize: 20),
              )),
              verticalSpaceSmall,
              Text(
                "Enter the 6 digit Code Sent To Your Number",
                style: TextStyle(
                    color: kcblackColor.withOpacity(0.65), fontSize: 16),
              ),
              verticalSpaceMedium,
              const Text(
                "Phone",
                style: TextStyle(color: kcblackColor, fontSize: 20),
              ),
              const Textfield(
                height: 42,
                width: 350,
                title: "Enter 6 digit Code Here",
              ),
              verticalSpaceMedium,
              Center(
                  child: MyButton(
                width: 265,
                title: "Verify",
                fontSize: 14,
                onTap: viewModel.verifyPasswordNumber,
              )),
            ],
          ),
        ));
  }

  @override
  VerifyPhoneNumberViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyPhoneNumberViewModel();
}
