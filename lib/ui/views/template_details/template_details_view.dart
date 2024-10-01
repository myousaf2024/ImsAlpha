import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/enums.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/template_details/widgets/information_section.dart';
import 'package:lms_alpha/ui/views/template_details/widgets/library_report.dart';
import 'package:lms_alpha/ui/views/template_details/widgets/recovery_status.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_colors.dart';
import '../../widgets/common/textfield/textfield.dart';
import 'template_details_viewmodel.dart';
import 'widgets/action_item_section.dart';
import 'widgets/asset_certification.dart';
import 'widgets/asset_info.dart';
import 'widgets/asset_inspection.dart';
import 'widgets/asset_location.dart';
import 'widgets/createAssetType.dart';
import 'widgets/create_additional_info.dart';
import 'widgets/create_vendor.dart';
import 'widgets/details_template.dart';
import 'widgets/insurance_detail.dart';
import 'widgets/maintainance_log.dart';

class TemplateDetailsView extends StackedView<TemplateDetailsViewModel> {
  final AssetPages pageType;
  final bool islib;

  const TemplateDetailsView({
    Key? key,
    required this.islib,
    required this.pageType,
  }) : super(
          key: key,
        );

  @override
  Widget builder(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: MyAppBar(title: pageType.name),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceSmall,
              islib ? Container() : const Header(name: "Template Details"),
              islib
                  ? const LibraryReport()
                  : DetailsTemplate(
                      lib: islib,
                    ),
              verticalSpaceMedium,
              const Header(name: "Create Document Info"),
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
                      Text(
                        "Document No",
                        style: TextStyle(
                            fontSize: getResponsiveSmallFontSize(context),
                            fontWeight: FontWeight.w700,
                            color: kcblackColor),
                      ),
                      Textfield(
                        height: 42,
                        width: 350,
                        isfill: islib ? true : false,
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpaceSmall,
              const Header(name: "Create Asset Type"),
              Createassettype(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Asset Info"),
              AssetInfo(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Vendor Details"),
              CreateVendor(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Asset Certification"),
              AssetCertification(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Asset Inspection"),
              AssetInspection(islib: islib),
              verticalSpaceSmall,
              const Header(name: "Create Maintenance Logs"),
              MaintainanceLog(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Insurance Details"),
              InsuranceDetail(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Asset Location"),
              AssetLocation(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Asset Information Section"),
              InformationSection(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "RecoveryStatus"),
              RecoveryStatus(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Additional Info"),
              CreateAdditionalInfo(
                islib: islib,
              ),
              verticalSpaceSmall,
              const Header(name: "Create Action Items Section"),
              ActionItemSection(
                islib: islib,
              ),
              verticalSpaceSmall,
              islib
                  ? Container()
                  : Align(
                      alignment: Alignment.centerRight,
                      child: MyButton(
                          width: 125,
                          height: 33,
                          title: "Submit Form",
                          fontSize: 16,
                          onTap: () {}))
            ],
          ),
        ),
      ),
    );
  }

  @override
  TemplateDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TemplateDetailsViewModel();
}
