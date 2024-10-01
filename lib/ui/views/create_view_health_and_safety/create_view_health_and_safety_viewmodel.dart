import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/attachment/attachment_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/capa/capa_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/links/links_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/loss_detail_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/personal_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/potential_risk/potential_risk_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/residual_risk/residual_risk_view.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/investigation/investigation_view.dart';
import 'package:stacked/stacked.dart';

import '../improvement_plan/improvement_plan_view.dart';
import '../lession_learn/lession_learn_view.dart';
import '../prevention_actions/prevention_actions_view.dart';
import 'tabs/action_item/action_item_view.dart';

class CreateViewHealthAndSafetyViewModel extends BaseViewModel {
  String site = 'Option 1';
  String project = 'Project 1';
  int selectIndex = 0;

  bool checkvalue1 = true;
  bool checkvalue2 = true;
  bool checkvalue3 = true;
  bool checkvalue4 = true;

  List<String> siteOption = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  List<String> projectOption = [
    'Project 1',
    'Project 2',
    'Project 3',
    'Project 4',
    'Project 5',
  ];

  List<String> healthSafetyTabs = [
    "HSE Main",
    'Loss Details',
    'Potential Risk',
    'Residual Risk',
    'Personal',
    'CAPA',
    'Attachments',
    'Links',
  ];

  List<String> nearMissTabs = [
    "HSE Main",
    'Loss Details',
    'Potential Risk',
    'Residual Risk',
    'Personal',
    'CAPA',
    'Attachments',
    'Links',
    'Investigation',
    "Action Items",
    'Lesson Learn',
    'Preventive Actions',
    'Improvement Plans',
    'Report Review'
  ];

  void changeSite(String? value) {
    site = value ?? siteOption[0];
    notifyListeners();
  }

  void changeProject(String? value) {
    project = value ?? projectOption[0];
    notifyListeners();
  }

  void changeCheckValue1(bool? value) {
    checkvalue1 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue2(bool? value) {
    checkvalue2 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue3(bool? value) {
    checkvalue3 = value ?? false;
    notifyListeners();
  }

  void changeCheckValue4(bool? value) {
    checkvalue4 = value ?? false;
    notifyListeners();
  }

  void tabIndex(int index) {
    selectIndex = index;
    notifyListeners();
  }

  Widget getScreen(selectIndex) {
    switch (selectIndex) {
      case 0:
        return HseMainView(nextTab: tabIndex);
      case 1:
        return LossDetailView(nextTab: tabIndex);
      case 2:
        return const PotentialRiskView();
      case 3:
        return const ResidualRiskView();
      case 4:
        return const PersonalView();
      case 5:
        return const CapaView();
      case 6:
        return const AttachmentView();
      case 7:
        return const LinksView();
      case 8:
        return const InvestigationView();
      case 9:
        return const ActionItemView();
      case 10:
        return const LessionLearnView();
      case 11:
        return const PreventionActionsView();
      case 12:
        return const ImprovementPlanView();

      default:
        return Container();
    }
  }
}
