import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:stacked/stacked.dart';

import '../../../../common/app_strings.dart';
import 'send_verification_code_viewmodel.dart';

class SendVerificationCodeView
    extends StackedView<SendVerificationCodeViewModel> {
  const SendVerificationCodeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SendVerificationCodeViewModel viewModel,
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
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(emailCode),
                width: 300,
                height: 300,
              ),
              verticalSpaceMedium,
              Align(
                alignment: Alignment.center,
                child: Text(
                  "We’ll need to verify your old email address,yousafbhatti@gmail.com,in order to change it.Lost access to your email ? Please contact your email provider to regain access.",
                  style: TextStyle(
                      color: kcblackColor.withOpacity(0.65),
                      fontWeight: FontWeight.w400,
                      fontSize: 16
                      // getResponsiveExtraLargeFontSize(context),
                      ),
                ),
              ),
              verticalSpaceMedium,
              MyButton(
                title: "Send Verification Code",
                width: 265,
                fontSize: 18,
                onTap: () {
                  viewModel.verificationCode();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  SendVerificationCodeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SendVerificationCodeViewModel();
}
