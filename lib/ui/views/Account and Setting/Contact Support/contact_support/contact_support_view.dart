import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'contact_support_viewmodel.dart';

class ContactSupportView extends StackedView<ContactSupportViewModel> {
  const ContactSupportView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ContactSupportViewModel viewModel,
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
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceMedium,
            Text(
              "Contact Support",
              style: TextStyle(
                  color: kcDarkBlueColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            verticalSpaceSmall,
            Text(
              "Title",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              height: 42,
              title: "Enter Your Title Here",
            ),
            verticalSpaceSmall,
            Text(
              "Description",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            Textfield(
              width: 350,
              maxlines: 5,
              title: "Enter your Message Here",
            ),
            verticalSpaceSmall,
            Center(
                child: MyButton(
              width: 190,
              title: "Send",
              fontSize: 14,
              //   onTap: viewModel.accountScreen,
            )),
          ],
        ),
      ),
    );
  }

  @override
  ContactSupportViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ContactSupportViewModel();
}
