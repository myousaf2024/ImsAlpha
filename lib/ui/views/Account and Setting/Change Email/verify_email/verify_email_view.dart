import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'verify_email_viewmodel.dart';

class VerifyEmailView extends StackedView<VerifyEmailViewModel> {
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyEmailViewModel viewModel,
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
              verticalSpaceLarge,
              const Center(
                  child: Text(
                "Verify Your Email",
                style: TextStyle(color: kcDarkBlueColor, fontSize: 20),
              )),
              verticalSpaceSmall,
              Text(
                "Enter the 6 digit Code sent to your Email",
                style: TextStyle(
                    color: kcblackColor.withOpacity(0.65), fontSize: 16),
              ),
              verticalSpaceMedium,
              const Text(
                "Email Code",
                style: TextStyle(color: kcblackColor, fontSize: 20),
              ),
              verticalSpaceTiny,
              Textfield(
                height: 42,
                width: 350,
                title: "Enter 6 digit Code Here",
                ctrl: viewModel.passwordCtrl,
              ),
              verticalSpaceMedium,
              Center(
                child: MyButton(
                  width: 265,
                  title: "Verify",
                  fontSize: 18,
                  onTap: viewModel.verify,
                ),
              ),
              verticalSpaceMedium,
              Center(
                child: Text(
                  "Didn’t you receive an Email?",
                  style: TextStyle(
                      color: kcblackColor.withOpacity(0.65), fontSize: 16),
                ),
              ),
              verticalSpaceTiny,
              const Center(
                child: Text(
                  "Resend Email",
                  style: TextStyle(
                      color: kcPrimaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  VerifyEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyEmailViewModel();
}
