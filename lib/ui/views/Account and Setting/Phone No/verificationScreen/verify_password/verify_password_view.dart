import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'verify_password_viewmodel.dart';

class VerifyPasswordView extends StackedView<VerifyPasswordViewModel> {
  const VerifyPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyPasswordViewModel viewModel,
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
                "Verify Your Password",
                style: TextStyle(color: kcDarkBlueColor, fontSize: 20),
              )),
              verticalSpaceSmall,
              Text(
                "Enter your Password , to remove the number",
                style: TextStyle(
                    color: kcblackColor.withOpacity(0.65), fontSize: 16),
              ),
              verticalSpaceMedium,
              const Text(
                "Password",
                style: TextStyle(color: kcblackColor, fontSize: 20),
              ),
              Textfield(
                height: 42,
                width: 350,
                title: "Enter Your Password Here",
                ctrl: viewModel.passwordCtrl,
                suffixIcon: GestureDetector(
                  onTap: () {
                    viewModel.togglePasswordVisibility();
                  },
                  child: Icon(
                    viewModel.obsecure
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: kcPrimaryColor,
                  ),
                ),
                obscureText: viewModel.obsecure,
              ),
              verticalSpaceMedium,
              Center(
                  child: MyButton(
                width: 265,
                title: "Done",
                fontSize: 14,
                onTap: viewModel.accountScreen,
              )),
            ],
          ),
        ));
  }

  @override
  VerifyPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyPasswordViewModel();
}
