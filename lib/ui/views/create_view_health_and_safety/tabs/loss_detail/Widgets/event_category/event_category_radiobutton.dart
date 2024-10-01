import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/Widgets/event_category/radio_button_assetLoss.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/loss_detail/loss_detail_viewmodel.dart';
import 'package:stacked/stacked.dart';

class EventCategoryRadiobutton extends ViewModelWidget<LossDetailViewModel> {
  const EventCategoryRadiobutton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LossDetailViewModel viewModel,
  ) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: RadioButtonAssetloss(
              name: 'Radio 1',
              value: 1,
            )),
            Expanded(child: RadioButtonAssetloss(name: 'Radio 2', value: 2)),
            Expanded(
                child: RadioButtonAssetloss(
              name: "Radio 3",
              value: 3,
            )),
          ],
        ),
        Row(
          children: [
            const Expanded(
                child: RadioButtonAssetloss(name: 'Radio 4', value: 4)),
            const Expanded(
                child: RadioButtonAssetloss(name: 'Radio 5', value: 5)),
            Expanded(child: Container())
          ],
        ),
      ],
    );
  }
}
