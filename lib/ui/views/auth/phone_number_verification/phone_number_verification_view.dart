import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/opt_widget/opt_widget.dart';
import 'package:stacked/stacked.dart';

import 'phone_number_verification_viewmodel.dart';

class PhoneNumberVerificationView
    extends StackedView<PhoneNumberVerificationViewModel> {
  const PhoneNumberVerificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PhoneNumberVerificationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      color: kcblackColor,
                      fontSize: getResponsiveSmallFontSize(context),
                    ),
                  ),
                ),
              ),
              Text(
                "Phone Number Verification",
                style: TextStyle(
                  color: kcPrimaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: getResponsiveExtraLargeFontSize(context),
                ),
              ),
              Image(
                image: const AssetImage(phoneVerify),
                width: screenWidth(context) - 40,
              ),
              Text(
                "Enter the 6-Digit Code Sent to ",
                style: TextStyle(
                  color: kcblackColor.withOpacity(0.65),
                  fontWeight: FontWeight.w400,
                  fontSize: getResponsiveMediumFontSize(context),
                ),
              ),
              verticalSpaceTiny,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "+123328392837",
                    style: TextStyle(
                      color: kcblackColor.withOpacity(0.65),
                      fontWeight: FontWeight.w400,
                      fontSize: getResponsiveMediumFontSize(context),
                    ),
                  ),
                  horizontalSpaceSmall,
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Change Number?",
                      style: TextStyle(
                          color: kcPrimaryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              verticalSpaceTiny,
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
              verticalSpaceMedium,
              MyButton(
                title: "Verify",
                width: 200,
                onTap: viewModel.replaceWithBottomNavigationBarView,
              ),
              verticalSpaceTiny,
              Text(
                "Didn’t you receive an OTP?",
                style: TextStyle(
                  color: kcblackColor.withOpacity(0.65),
                  fontWeight: FontWeight.w400,
                  fontSize: getResponsiveMediumFontSize(context),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Resend OTP in",
                        style: TextStyle(
                            color: kcPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      )),
                  Text(
                    "4s",
                    style: TextStyle(
                      color: kcblackColor.withOpacity(0.40),
                      fontWeight: FontWeight.w400,
                      fontSize: getResponsiveMediumFontSize(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  PhoneNumberVerificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PhoneNumberVerificationViewModel();
}
