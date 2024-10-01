import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'verify_account_viewmodel.dart';

class VerifyAccountView extends StackedView<VerifyAccountViewModel> {
  const VerifyAccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    VerifyAccountViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(image: AssetImage(startupImage)),
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
                          "Verify your Phone Number so that we make sure that it  really you.",
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
                      "Phone",
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
                    ),
                    Center(
                        child: MyButton(
                      width: 200,
                      title: "Send OTP",
                      onTap: () {
                        viewModel.replaceWithOPT();
                      },
                    )),
                    Center(
                        child: TextButton(
                            onPressed:
                                viewModel.replaceWithVerifyPhoneAccountView,
                            child: const Text("Confirm by Email Instead?")))
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
  VerifyAccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      VerifyAccountViewModel();
}
