import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/add_injury_personal/add_injury_personal.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/asset_loss/asset_loss.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/environment/environment.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/event_category/event_category.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/injury_location/injury_location.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/safety_loss/safety_loss.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:stacked/stacked.dart';

import 'loss_detail_viewmodel.dart';

class LossDetailView extends StackedView<LossDetailViewModel> {
  final Function nextTab;
  const LossDetailView({Key? key, required this.nextTab}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LossDetailViewModel viewModel,
    Widget? child,
  ) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Header(
            name: 'Safety Loss',
            showButton: true,
          ),
          SafetyLoss(),
          verticalSpaceSmall,
          Header(
            name: 'Asset Loss',
            showButton: true,
          ),
          AssetLoss(),
          verticalSpaceSmall,
          Header(
            name: 'Environment',
            showButton: true,
          ),
          Environment(),
          verticalSpaceSmall,
          Header(
            name: 'Event Categorization',
          ),
          EventCategory(),
          verticalSpaceSmall,
          Header(
            name: 'Add Injured Person Details',
            showButton: true,
          ),
          AddInjuryPersonal(),
          verticalSpaceSmall,
          Header(
            name: 'Select Injury Location',
          ),
          InjuryLocation(),
        ],
      ),
    );
  }

  @override
  LossDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LossDetailViewModel();
}
