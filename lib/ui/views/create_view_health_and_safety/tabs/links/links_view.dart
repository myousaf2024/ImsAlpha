import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'links_viewmodel.dart';

class LinksView extends StackedView<LinksViewModel> {
  const LinksView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LinksViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(
          name: "Links",
          showButton: true,
        ),
        Container(
          width: 399,
          decoration: BoxDecoration(
            border: Border.all(color: kcPrimaryColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceTiny,
                Text(
                  "Link To Other Report",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "Report Date",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                  suffixIcon: Icon(Icons.calendar_month),
                ),
                verticalSpaceTiny,
                Text(
                  "Report Name",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                DropdownableTextField(
                  height: 42,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceTiny,
                Text(
                  "ABC 1",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "ABC 2",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "ABC 3",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "ABC 4",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "ABC 5",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                verticalSpaceTiny,
                const Textfield(
                  height: 42,
                  width: 350,
                ),
                verticalSpaceTiny,
                Text(
                  "ABC 6",
                  style: TextStyle(
                      fontSize: getResponsiveSmallFontSize(context),
                      fontWeight: FontWeight.w700,
                      color: kcblackColor),
                ),
                const Textfield(
                  height: 42,
                  width: 350,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  LinksViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LinksViewModel();
}
