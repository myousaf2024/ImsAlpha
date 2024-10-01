import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'update_email_viewmodel.dart';

class UpdateEmailView extends StackedView<UpdateEmailViewModel> {
  const UpdateEmailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdateEmailViewModel viewModel,
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
                "Update your Email Address",
                style: TextStyle(color: kcDarkBlueColor, fontSize: 20),
              )),
              verticalSpaceMedium,
              const Text(
                "Email Address",
                style: TextStyle(color: kcblackColor, fontSize: 20),
              ),
              Textfield(
                height: 42,
                width: 350,
                title: "Enter New Email Address Here",
                ctrl: viewModel.emailController,
              ),
              verticalSpaceMedium,
              Center(
                child: MyButton(
                  width: 265,
                  title: "Update Email Address",
                  fontSize: 18,
                  onTap: viewModel.updateEmail,
                ),
              ),
            ],
          ),
        ));
  }

  @override
  UpdateEmailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UpdateEmailViewModel();
}
