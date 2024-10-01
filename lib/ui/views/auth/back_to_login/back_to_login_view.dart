import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/opt_widget/opt_widget.dart';
import 'package:stacked/stacked.dart';

import 'back_to_login_viewmodel.dart';

class BackToLoginView extends StackedView<BackToLoginViewModel> {
  const BackToLoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BackToLoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                "Email Verification",
                style: TextStyle(
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 24
                    // getResponsiveExtraLargeFontSize(context),
                    ),
              ),
              const Image(
                image: AssetImage(emailCode),
                width: 300,
                height: 300,
              ),
              Text(
                "Enter the 6-Digit Code Sent to ",
                style: TextStyle(
                    color: kcblackColor.withOpacity(0.65),
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                    // getResponsiveExtraLargeFontSize(context),
                    ),
              ),
              const Text(
                "yousafbatti@gmail.com ",
                style: TextStyle(
                    color: kcPrimaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                    // getResponsiveExtraLargeFontSize(context),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const OptWidget(),
                    const OptWidget(),
                    const OptWidget(),
                    const OptWidget(),
                    const OptWidget(),
                    const OptWidget(),
                    Container(),
                    Container(),
                    Container()
                  ],
                ),
              ),
              MyButton(
                title: "Verify",
                width: 200,
                onTap: () {
                  viewModel.changePassword();
                },
              ),
              Text(
                "Didn’t not receive an Email?",
                style: TextStyle(
                    color: kcblackColor.withOpacity(0.65),
                    fontWeight: FontWeight.w400,
                    fontSize: 16
                    // getResponsiveExtraLargeFontSize(context),
                    ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend Email",
                        style: TextStyle(
                            color: kcPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  BackToLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BackToLoginViewModel();
}
