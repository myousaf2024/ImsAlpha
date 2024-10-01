import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/common/header/header.dart';
import '../../widgets/common/textfield/textfield.dart';
import 'improvement_plan_viewmodel.dart';

class ImprovementPlanView extends StackedView<ImprovementPlanViewModel> {
  const ImprovementPlanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ImprovementPlanViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const Header(
          name: "Improvement Plans",
          showButton: true,
        ),
        Container(
            width: 399,
            decoration: BoxDecoration(
              border: Border.all(color: kcPrimaryColor),
            ),
            child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Improvement Plans",
                        style: TextStyle(
                            color: kcblackColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      verticalSpaceTiny,
                      Textfield(
                        width: 350,
                        maxlines: 5,
                        maxcond: true,
                      ),
                    ],
                  ),
                ))),
      ],
    );
  }

  @override
  ImprovementPlanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ImprovementPlanViewModel();
}
