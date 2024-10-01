import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'business_info_viewmodel.dart';

class BusinessInfoView extends StackedView<BusinessInfoViewModel> {
  const BusinessInfoView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BusinessInfoViewModel viewModel,
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
  BusinessInfoViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BusinessInfoViewModel();
}
