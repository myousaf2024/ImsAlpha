import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 430,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(loginImage),
                  fit: BoxFit.cover,
                )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //   child: const Image(image: AssetImage(loginImage))),
                    verticalSpaceMedium,
                    Text(
                      "Login",
                      style: TextStyle(
                        color: kcPrimaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getResponsiveExtraLargeFontSize(context),
                      ),
                    ),
                    verticalSpaceSmall,
                    Text(
                      "Tenant ID",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getResponsiveMediumFontSize(context),
                      ),
                    ),
                    DropdownableTextField(
                      title: "Select your role here",
                      height: 42,
                      width: 350,
                      items: viewModel.tenantIdItems,
                      selectedValue: viewModel.tenantID,
                      onChanged: viewModel.changeTenantId,
                    ),
                    // Textfield(
                    //   title: "Select your role here",
                    //   suffix: DropdownButton(
                    //       items: viewModel.items.map((String items) {
                    //         return DropdownMenuItem(
                    //           value: items,
                    //           child: Text(items),
                    //         );
                    //       }).toList(),
                    //       onChanged: (value) {
                    //         viewModel.changeDropDownValue(value);
                    //       }),
                    // ),
                    verticalSpaceSmall,
                    Text(
                      "Email",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getResponsiveMediumFontSize(context),
                      ),
                    ),
                    Textfield(
                      height: 42,
                      width: 350,
                      title: "Enter Your Email Address",
                      ctrl: viewModel.emailController,
                    ),

                    verticalSpaceSmall,
                    Text(
                      "Password",
                      style: TextStyle(
                        color: kcblackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: getResponsiveMediumFontSize(context),
                      ),
                    ),
                    // verticalSpaceMedium,
                    Textfield(
                      height: 42,
                      width: 350,
                      title: "Enter Your Password Here",
                      ctrl: viewModel.passwordController,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: viewModel.replaceWithRecoverpasswordView,
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    Center(
                        child: MyButton(
                      width: 200,
                      title: "Login",
                      onTap: () {
                        viewModel.login();
                        //  viewModel.navigateToVerifyAccount();
                      },
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
