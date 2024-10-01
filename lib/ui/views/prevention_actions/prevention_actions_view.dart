import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import '../../widgets/common/textfield/textfield.dart';
import 'prevention_actions_viewmodel.dart';

class PreventionActionsView extends StackedView<PreventionActionsViewModel> {
  const PreventionActionsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PreventionActionsViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const Header(
          name: "Preventive Actions",
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
                        "Preventive Actions",
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
  PreventionActionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PreventionActionsViewModel();
}
