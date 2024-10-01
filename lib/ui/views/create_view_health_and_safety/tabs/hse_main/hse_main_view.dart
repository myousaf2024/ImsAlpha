import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/Events/events.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/activity_type/activity_type.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/business_detail/business_detail.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/businessInfo/business_info.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/contributory_causal_factor/contributory_causal_factor.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/description/description.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/equipment_involve/equipment_involve.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/hse_data/hse_data.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/immediate_causal_factory/immediate_causal_factory.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/recordable_incident/recordable_incident.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/regulatory_recordable/regulatory_recordable.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/types_of_incident/types_incident.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/user_info.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/my_button.dart';
import 'package:stacked/stacked.dart';

import 'hse_main_viewmodel.dart';

class HseMainView extends StackedView<HseMainViewModel> {
  final Function nextTab;

  const HseMainView({Key? key, required this.nextTab}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HseMainViewModel viewModel,
    Widget? child,
  ) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Header(
            name: 'User Info',
          ),
          const UserInfo(),
          verticalSpaceMedium,
          const Header(
            name: 'Business Details',
          ),
          const BusinessDetail(),
          verticalSpaceMedium,
          const Header(
            name: 'Business Info',
          ),
          const BusinessInfo(),
          verticalSpaceMedium,
          const Header(
            name: 'Events',
          ),
          const Events(),
          verticalSpaceSmall,
          const Header(
            name: 'Types of Incidents',
          ),
          const TypesIncident(),
          verticalSpaceSmall,
          const Header(name: 'Description'),
          const Description(),
          verticalSpaceSmall,
          const Header(name: 'HSE Data'),
          const HseData(),
          verticalSpaceSmall,
          const Header(
            name: 'Immediate Causal Factory',
            showButton: true,
          ),
          const ImmediateCausalFactory(),
          verticalSpaceSmall,
          const Header(
            name: 'Contributory Casual Factor',
            showButton: true,
          ),
          const ContributoryCausalFactor(),
          verticalSpaceSmall,
          const Header(
            name: 'Equipment Involved',
            showButton: true,
          ),
          const EquipmentInvolve(),
          verticalSpaceSmall,
          const Header(
            name: 'Activity Type',
            showButton: true,
          ),
          const ActivityType(),
          verticalSpaceSmall,
          const Header(
            name: 'Regulatory Recordable',
          ),
          const RegulatoryRecordable(),
          verticalSpaceSmall,
          const Header(
            name: 'Recordable Incidents',
          ),
          const RecordableIncident(),
          verticalSpaceSmall,
          Align(
              alignment: Alignment.centerRight,
              child: MyButton(
                  width: 125,
                  height: 31,
                  title: "Save & Next",
                  onTap: () {
                    nextTab(1);
                  }))
        ],
      ),
    );
  }

  @override
  HseMainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HseMainViewModel();
}
