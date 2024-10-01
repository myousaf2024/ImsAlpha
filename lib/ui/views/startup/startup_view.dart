import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:stacked/stacked.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
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
                  left: Radius.circular(50.0),
                  right: Radius.circular(50.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  verticalSpaceLarge,
                  const Text(
                    "Welcome",
                    style: TextStyle(
                        color: kcPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 25
                        // getResponsiveExtraLargeFontSize(context),
                        ),
                  ),
                  verticalSpaceMedium,
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      "Our FSM app offers a user-friendly interface and robust features for seamless service management, boosting productivity and customer satisfaction. Ideal for customers seeking reliable service and businesses aiming to optimize field operations.",
                      style: TextStyle(
                        color: kcblackColor.withOpacity(0.65),
                        fontSize: 16,
                        //getResponsiveMediumFontSize(context),
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  verticalSpaceMedium,
                  MyButton(
                      title: "Next",
                      width: 200,
                      onTap: () {
                        viewModel.navigateToLogin();
                      }),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
