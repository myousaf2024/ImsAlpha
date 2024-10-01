import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

class BusinessDetail extends ViewModelWidget<HseMainViewModel> {
  const BusinessDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
  ) {
    return Container(
        width: 399,
        height: 900,
        decoration: BoxDecoration(
          border: Border.all(color: kcPrimaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Site Code",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.siteOption,
                selectedValue: viewModel.site,
                onChanged: viewModel.changeSite,
              ),
              verticalSpaceTiny,
              Text(
                "Site Name",
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
                "Site Name",
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
                "Site Name",
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
                "Business Location",
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
                "Business Segment",
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
                "Sub Segment",
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
                "Sub Sub Segment",
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
                "Area",
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
                "City",
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
                "Country",
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
                "Region",
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
                "Rupported By",
                style: TextStyle(
                    fontSize: getResponsiveSmallFontSize(context),
                    fontWeight: FontWeight.w700,
                    color: kcblackColor),
              ),
              verticalSpaceTiny,
              DropdownableTextField(
                height: 30,
                width: 350,
                title: "Please Select",
                items: viewModel.reportDetail,
                selectedValue: viewModel.report,
                onChanged: viewModel.changeReport,
              ),
            ],
          ),
        ));
  }
}
