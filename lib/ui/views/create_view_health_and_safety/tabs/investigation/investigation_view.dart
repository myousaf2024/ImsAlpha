import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/immediate_cause.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/incident_potential_incident.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/internal_members.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/investigation_widget.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/lack_managment.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/route_cause.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/widgets/task.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:stacked/stacked.dart';

import 'investigation_viewmodel.dart';
import 'widgets/external_members.dart';
import 'widgets/potential_loss.dart';

class InvestigationView extends StackedView<InvestigationViewModel> {
  const InvestigationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    InvestigationViewModel viewModel,
    Widget? child,
  ) {
    return const Column(
      children: [
        Header(name: "Investigation"),
        InvestigationWidget(),
        verticalSpaceSmall,
        Header(
          name: "Internal Members",
        ),
        InternalMembers(),
        verticalSpaceSmall,
        Header(
          name: "External Members",
          showButton: true,
        ),
        ExternalMembers(),
        verticalSpaceSmall,
        Header(
          name: "Potential Loss",
        ),
        PotentialLoss(),
        verticalSpaceSmall,
        Header(name: "Incident or Potential Incident"),
        IncidentPotentialIncident(),
        verticalSpaceSmall,
        Header(name: "Task", showButton: true),
        Task(),
        verticalSpaceSmall,
        Header(name: "RouteCause"),
        RouteCause(),
        verticalSpaceSmall,
        Header(name: "Immediate Cause"),
        ImmediateCause(),
        verticalSpaceSmall,
        Header(name: "Lack Management System Control"),
        LackManagment(),
        verticalSpaceSmall
      ],
    );
  }

  @override
  InvestigationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      InvestigationViewModel();
}
