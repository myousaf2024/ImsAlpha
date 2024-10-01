import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'update_phone_number_viewmodel.dart';

class UpdatePhoneNumberView extends StackedView<UpdatePhoneNumberViewModel> {
  const UpdatePhoneNumberView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    UpdatePhoneNumberViewModel viewModel,
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
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                "Update your Phone Number",
                style: TextStyle(color: kcDarkBlueColor, fontSize: 20),
              )),
              verticalSpaceSmall,
              Text(
                "Phone",
                style: TextStyle(color: kcblackColor, fontSize: 20),
              ),
              Textfield(
                  height: 42,
                  width: 350,
                  title: "437 364 7865 ",
                  ctrl: viewModel.passwordCtrl,
                  suffixIcon: Icon(Icons.close)),
              verticalSpaceMedium,
              Center(
                  child: MyButton(
                width: 265,
                height: 51,
                title: "Change Phone Number",
                fontSize: 14,
                onTap: viewModel.verifyNumber,
              )),
              verticalSpaceSmall,
              Center(
                  child: MyButton(
                width: 265,
                height: 51,
                selected: false,
                title: "Remove Phone Number",
                fontSize: 14,
                onTap: viewModel.verifyNumber,
              )),
            ],
          ),
        ));
  }

  @override
  UpdatePhoneNumberViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      UpdatePhoneNumberViewModel();
}
