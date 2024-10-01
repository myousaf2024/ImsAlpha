import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'calender_yearly_viewmodel.dart';

class CalenderYearlyView extends StackedView<CalenderYearlyViewModel> {
  const CalenderYearlyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CalenderYearlyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CalenderYearlyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CalenderYearlyViewModel();
}
