import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/hse_main_viewmodel.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/hse_main/widgets/user_info/Widgets/radio_button1.dart';
import 'package:stacked/stacked.dart';

class ShiftDetail extends ViewModelWidget<HseMainViewModel> {
  const ShiftDetail({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    HseMainViewModel viewModel,
  ) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: RadioButton1(
              name: 'Radio1',
              value: 0,
            )),
            Expanded(
              child: RadioButton1(name: 'Radio2', value: 1),
            ),
            Expanded(
                child: RadioButton1(
              name: "Radio3",
              value: 2,
            )),
          ],
        ),
        Row(
          children: [
            const Expanded(child: RadioButton1(name: 'Radio4', value: 3)),
            const Expanded(child: RadioButton1(name: 'Radio5', value: 4)),
            Expanded(child: Container())
          ],
        ),
      ],
    );
  }
}
