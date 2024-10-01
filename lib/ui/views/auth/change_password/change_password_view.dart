import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'change_password_viewmodel.dart';

class ChangePasswordView extends StackedView<ChangePasswordViewModel> {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChangePasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      viewModel.navigateToLogin();
                    },
                    child: const Text(
                      "Back to Login",
                      style: TextStyle(color: kcblackColor),
                    ),
                  ),
                ),

                const Text(
                  "Change Password",
                  style: TextStyle(
                      color: kcPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 24
                      // getResponsiveExtraLargeFontSize(context),
                      ),
                ),
                const Image(
                  image: AssetImage(changePassword),
                  width: 300,
                  height: 300,
                ),
                const Text(
                  "New Password",
                  style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16
                      // getResponsiveExtraLargeFontSize(context),
                      ),
                ),
                // verticalSpaceMedium,
                Textfield(
                  height: 42,
                  width: 350,
                  title: "Enter Your New Password ",
                  ctrl: viewModel.emailCtrl,
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

                //  verticalSpaceMedium,
                const Text(
                  "Confirm Password",
                  style: TextStyle(
                    color: kcblackColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,

                    // getResponsiveExtraLargeFontSize(context),
                  ),
                ),
                // verticalSpaceMedium,
                Textfield(
                  height: 42,
                  width: 350,
                  title: "Enter Your Confirm Password",
                  ctrl: viewModel.passwordCtrl,
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
                Center(
                    child: MyButton(
                  width: 353,
                  title: "Change Password",
                  onTap: viewModel.replaceWithBottomNavigationBarView,
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  ChangePasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChangePasswordViewModel();
}
