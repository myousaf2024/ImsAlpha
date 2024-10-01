import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/widgets/report_widget.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:stacked/stacked.dart';

import 'create_view_health_and_safety_viewmodel.dart';

class CreateViewHealthAndSafetyView
    extends StackedView<CreateViewHealthAndSafetyViewModel> {
  final String title;
  const CreateViewHealthAndSafetyView({Key? key, required this.title})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateViewHealthAndSafetyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: const MyAppBar(
          title: "Health & Safety",
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              const ReportWidget(),
              verticalSpaceSmall,
              SizedBox(
                height: 28,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: title == "Near Miss"
                        ? viewModel.nearMissTabs.length
                        : viewModel.healthSafetyTabs.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          viewModel.tabIndex(index);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          margin: const EdgeInsets.only(right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              border: Border.all(color: kcgrey),
                              color: viewModel.selectIndex == index
                                  ? kcPrimaryColor
                                  : kcwhiteColor),
                          child: Center(
                              child: Text(
                            title == "Near Miss"
                                ? viewModel.nearMissTabs[index]
                                : viewModel.healthSafetyTabs[index],
                            style: TextStyle(
                                color: viewModel.selectIndex == index
                                    ? kcwhiteColor
                                    : kcblackColor.withOpacity(0.65)),
                          )),
                        ),
                      );
                    }),
              ),
              verticalSpaceSmall,
              Expanded(
                child: SingleChildScrollView(
                  child: viewModel.getScreen(viewModel.selectIndex),
                ),
              )
            ])));
  }

  @override
  CreateViewHealthAndSafetyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateViewHealthAndSafetyViewModel();
}
