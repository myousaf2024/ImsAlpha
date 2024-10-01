import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'account_password_viewmodel.dart';

class AccountPasswordView extends StackedView<AccountPasswordViewModel> {
  const AccountPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountPasswordViewModel viewModel,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpaceMedium,
              Text(
                "Change your Password",
                style: TextStyle(
                    fontSize: getResponsiveExtraLargeFontSize(context),
                    color: kcDarkBlueColor,
                    fontWeight: FontWeight.w700),
              ),

              verticalSpaceSmall,
              const Text(
                "Enter your Current Password",
                style: TextStyle(
                    color: kcblackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                    // getResponsiveExtraLargeFontSize(context),
                    ),
              ),
              verticalSpaceTiny,
              Textfield(
                height: 42,
                width: 350,
                title: "Enter your Password Here ",
                ctrl: viewModel.currentPasswordCtrl,
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
              const Text(
                "Enter New Password",
                style: TextStyle(
                    color: kcblackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16
                    // getResponsiveExtraLargeFontSize(context),
                    ),
              ),
              verticalSpaceTiny,
              Textfield(
                height: 42,
                width: 350,
                title: "Enter your Password Here ",
                ctrl: viewModel.newPasswordCtrl,
                suffixIcon: GestureDetector(
                  onTap: () {
                    viewModel.togglePasswordVisibility1();
                  },
                  child: Icon(
                    viewModel.obsecure1
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: kcPrimaryColor,
                  ),
                ),
                obscureText: viewModel.obsecure1,
              ),
              verticalSpaceMedium,
              //  verticalSpaceMedium,
              const Text(
                "Re-Type New Password",
                style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,

                  // getResponsiveExtraLargeFontSize(context),
                ),
              ),

              verticalSpaceTiny,
              // verticalSpaceMedium,
              Textfield(
                height: 42,
                width: 350,
                title: "Enter your Password Here",
                ctrl: viewModel.retypePasswordCtrl,
                suffixIcon: GestureDetector(
                  onTap: () {
                    viewModel.togglePasswordVisibility2();
                  },
                  child: Icon(
                    viewModel.obsecure2
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: kcPrimaryColor,
                  ),
                ),
                obscureText: viewModel.obsecure2,
              ),
              verticalSpaceMedium,
              const Center(
                  child: MyButton(
                width: 353,
                title: "Change Password",
                //  onTap: viewModel.replaceWithBottomNavigationBarView,
              ))
            ],
          ),
        ),
      ),
    );
  }

  @override
  AccountPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountPasswordViewModel();
}
