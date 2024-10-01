import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:lms_alpha/ui/widgets/common/responsive_gridview.dart';
import 'package:stacked/stacked.dart';

import 'create_and_write_viewmodel.dart';

class CreateAndWriteView extends StackedView<CreateAndWriteViewModel> {
  const CreateAndWriteView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreateAndWriteViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const MyAppBar(title: "Create and Write"),
      body: ResponsiveGridView(
        itemCount: viewModel.itemsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: viewModel.functionsList[index],
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              decoration: BoxDecoration(
                color: kcPrimaryColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(color: kcPrimaryColor, width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    viewModel.itemsList[index]["icon"] ?? "",
                    height: screenWidth(context) / 7,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    viewModel.itemsList[index]["title"] ?? "",
                    style: const TextStyle(color: kcwhiteColor),
                  ),
                ],
              ),
            ),
          );
        },
        crossAxisCount: 3,
        spacing: 10.0,
        aspectRatio: 1.1,
      ),
    );
  }

  @override
  CreateAndWriteViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreateAndWriteViewModel();
}
