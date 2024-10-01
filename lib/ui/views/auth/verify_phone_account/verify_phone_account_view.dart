import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'verify_phone_account_viewmodel.dart';

class VerifyPhoneAccountView extends StackedView<VerifyPhoneAccountViewModel> {
  const VerifyPhoneAccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyPhoneAccountViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(image: AssetImage(emailVerify)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 395,
              width: 430,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  // left: Radius.circular(50.0),
                  right: Radius.circular(70.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    verticalSpaceMedium,
                    const Center(
                      child: Text(
                        "Verify Your Account",
                        style: TextStyle(
                            color: kcPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 24
                            // getResponsiveExtraLargeFontSize(context),
                            ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Center(
                        child: Text(
                          "Verify your Email so that we make sure that it  really you.",
                          style: TextStyle(
                            color: kcblackColor.withOpacity(0.65),
                            fontSize: 16,
                            //getResponsiveMediumFontSize(context),
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    const Text(
                      "Email",
                      style: TextStyle(
                          color: kcblackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16
                          // getResponsiveExtraLargeFontSize(context),
                          ),
                    ),
                    const Textfield(
                      height: 42,
                      width: 350,
                      title: "Enter Your Email Address",
                    ),
                    Center(
                        child: MyButton(
                      title: "Send Varification Code",
                      width: 232,
                      onTap: () {
                        viewModel.navigateToEmailVarification();
                      },
                    )),
                    Center(
                        child: TextButton(
                            onPressed: viewModel
                                .replaceWithPhoneNumberVerificationView,
                            child: const Text(
                              "Confirm by Phone Number Instead?",
                              style: TextStyle(
                                  color: kcPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            )))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  VerifyPhoneAccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyPhoneAccountViewModel();
}
