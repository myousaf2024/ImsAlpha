import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/Account%20and%20Setting/account_and_setting/widgets/accountField.dart';
import 'package:stacked/stacked.dart';
import 'account_and_setting_viewmodel.dart';

class AccountAndSettingView extends StackedView<AccountAndSettingViewModel> {
  const AccountAndSettingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountAndSettingViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            "Account & Settings",
            style: TextStyle(
                fontSize: getResponsiveExtraLargeFontSize(context),
                color: kcPrimaryColor,
                fontWeight: FontWeight.w700),
          ),
          verticalSpaceSmall,
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(profile),
          ),
          verticalSpaceTiny,
          Text(
            "Alex Batti",
            style: TextStyle(
                fontSize: getResponsiveExtraLargeFontSize(context),
                color: kcblackColor),
          ),
          verticalSpaceMedium,
          Accountfield("Visit Profile", " ", true, () {}),
          verticalSpaceSmall,
          Accountfield("Phone No ", "+9243434354444444", true, () {
            viewModel.updatePhoneNumber();
          }),
          verticalSpaceSmall,
          Accountfield("Email", "alexkhan@gmail.com", true, () {
            viewModel.updateEmail();
          }),
          verticalSpaceSmall,
          Accountfield("Change Password", "", true, () {
            viewModel.changePasswordAccount();
          }),
          verticalSpaceSmall,
          Accountfield("Language", "", true, () {
            viewModel.chooseLanguage();
          }),
          verticalSpaceSmall,
          Accountfield("Contact Support", "", true, () {
            viewModel.contactSupport();
          }),
          verticalSpaceSmall,
          Accountfield("Use Guidlines", "", true, () {}),
          verticalSpaceSmall,
          Accountfield("Logout", "", true, () {}),
          verticalSpaceSmall,
        ],
      ),
    );
  }

  @override
  AccountAndSettingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountAndSettingViewModel();
}
