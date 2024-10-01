import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'recoverpassword_viewmodel.dart';

class RecoverpasswordView extends StackedView<RecoverpasswordViewModel> {
  const RecoverpasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RecoverpasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Stack(
        children: [
          const Image(image: AssetImage(recoverPassword)),
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
                        "Recover your Password",
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
                          "Enter your Email Address To Receive a verification code.",
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
                      title: "Send  Code",
                      width: 232,
                      onTap: () {
                        viewModel.backToLogin();
                      },
                    )),
                    Center(
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Back to login",
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
  RecoverpasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RecoverpasswordViewModel();
}
