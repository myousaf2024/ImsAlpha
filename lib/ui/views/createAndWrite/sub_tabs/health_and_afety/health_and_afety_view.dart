import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:lms_alpha/ui/widgets/common/responsive_gridview.dart';
import 'package:stacked/stacked.dart';

import 'health_and_afety_viewmodel.dart';

class HealthAndAfetyView extends StackedView<HealthAndAfetyViewModel> {
  const HealthAndAfetyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HealthAndAfetyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const MyAppBar(title: "Health & Safety"),
      body: Column(
        children: [
          ResponsiveGridView(
            itemCount: viewModel.itemsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  viewModel.navigateToIncidentsView(
                      viewModel.itemsList[index]["title"]);
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: kcPrimaryColor, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        viewModel.itemsList[index]["icon"],
                        height: screenWidth(context) / 5,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        viewModel.itemsList[index]["title"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: getResponsiveMediumFontSize(context)),
                      ),
                    ],
                  ),
                ),
              );
            },
            crossAxisCount: 2,
            spacing: 10.0,
            aspectRatio: 1.1,
          ),
        ],
      ),
    );
  }

  @override
  HealthAndAfetyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HealthAndAfetyViewModel();
}
