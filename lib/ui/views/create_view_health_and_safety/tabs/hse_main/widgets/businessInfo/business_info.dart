import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/businessSegment2.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/businessSegments4.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/busniessSegment1.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/busniessSegment3.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/busniessSegment5.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/ramedial_action.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

class BusinessInfo extends ViewModelWidget<HseMainViewModel> {
  const BusinessInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
  ) {
    return Container(
      width: 399,
      decoration: BoxDecoration(
        border: Border.all(color: kcPrimaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpaceSmall,
            const Text(
              "Business Performance related to fields",
              style: TextStyle(
                  color: kcblackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
            verticalSpaceTiny,
            DropdownableTextField(
              height: 30,
              width: 350,
              title: "Please Select",
              items: viewModel.businessInfo,
              selectedValue: viewModel.busniessField,
              onChanged: viewModel.business,
            ),
            verticalSpaceSmall,
            const Text(
              "Business Performance Related-Main Business",
              style:
                  TextStyle(color: kcblackColor, fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                Checkbox(
                  value: viewModel.checkvalue1,
                  onChanged: (value) {
                    viewModel.changeCheckValue1(value);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                const Text(
                  "CheckBox1",
                  style: TextStyle(
                    color: kcblackColor,
                  ),
                ),
                horizontalSpaceSmall,
                Checkbox(
                  value: viewModel.checkvalue2,
                  onChanged: (value) {
                    viewModel.changeCheckValue2(value);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                const Text(
                  "CheckBox2",
                  style: TextStyle(
                    color: kcblackColor,
                  ),
                ),
                horizontalSpaceSmall,
                Checkbox(
                  value: viewModel.checkvalue3,
                  onChanged: (value) {
                    viewModel.changeCheckValue3(value);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                const Text(
                  "CheckBox3",
                  style: TextStyle(
                    color: kcblackColor,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: viewModel.checkvalue4,
                  onChanged: (value) {
                    viewModel.changeCheckValue4(value);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                const Text(
                  "CheckBox4",
                  style: TextStyle(
                    color: kcblackColor,
                  ),
                ),
                horizontalSpaceSmall,
                Checkbox(
                  value: viewModel.checkvalue5,
                  onChanged: (value) {
                    viewModel.changeCheckValue5(value);
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                ),
                const Text(
                  "CheckBox5",
                  style: TextStyle(
                    color: kcblackColor,
                  ),
                ),
              ],
            ),
            const Busniesssegment1(),
            const Busniesssegment2(),
            const Busniesssegment3(),
            const Busniesssegment4(),
            const Busniesssegment5(),
            const RamedialAction(),
          ],
        ),
      ),
    );
  }
}
