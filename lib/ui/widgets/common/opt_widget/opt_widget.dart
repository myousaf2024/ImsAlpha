import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'opt_widget_model.dart';

class OptWidget extends StackedView<OptWidgetModel> {
  const OptWidget({super.key});

  @override
  Widget builder(
    BuildContext context,
    OptWidgetModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: 52,
      width: 42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: kcblackColor.withOpacity(0.40)),
      ),
    );
  }

  @override
  OptWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      OptWidgetModel();
}
