import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/capa/widgets/asset_capa.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'capa_viewmodel.dart';

class CapaView extends StackedView<CapaViewModel> {
  const CapaView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CapaViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(name: "Immediate Corrective Actions"),
        Container(
          width: 399,
          decoration: BoxDecoration(
            border: Border.all(color: kcPrimaryColor),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Reviewer / Approval Comments",
                  style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                verticalSpaceTiny,
                Textfield(
                  height: 42,
                  width: 350,
                ),
              ],
            ),
          ),
        ),
        verticalSpaceMedium,
        const Header(
          name: "Add Check Box",
          showButton: true,
        ),
        Container(
          width: 399,
          decoration: BoxDecoration(
            border: Border.all(color: kcPrimaryColor),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Check 3",
                  style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                verticalSpaceTiny,
                AssetCapa()
              ],
            ),
          ),
        ),
        verticalSpaceMedium,
        const Header(
          name: "Add Drop Down Fields",
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
                const Text(
                  "DropDown",
                  style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 42,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  CapaViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CapaViewModel();
}
