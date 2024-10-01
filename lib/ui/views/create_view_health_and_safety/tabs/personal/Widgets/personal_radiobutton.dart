import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/Widgets/radio_button_personal.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/personal/personal_viewmodel.dart';
import 'package:stacked/stacked.dart';

class PersonalRadiobutton extends ViewModelWidget<PersonalViewModel> {
  const PersonalRadiobutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PersonalViewModel viewModel,
  ) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: RadioButtonPersonal(
              name: 'Radio 1',
              value: 1,
            )),
            Expanded(child: RadioButtonPersonal(name: 'Radio 2', value: 2)),
            Expanded(
                child: RadioButtonPersonal(
              name: "Radio 3",
              value: 3,
            )),
          ],
        ),
        Row(
          children: [
            const Expanded(
                child: RadioButtonPersonal(name: 'Radio 4', value: 4)),
            const Expanded(
                child: RadioButtonPersonal(name: 'Radio 5', value: 5)),
            Expanded(child: Container())
          ],
        ),
      ],
    );
  }
}
