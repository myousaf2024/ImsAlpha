import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../template_details_viewmodel.dart';
import 'asset_radio.dart';

class AssetPrority extends ViewModelWidget<TemplateDetailsViewModel> {
  const AssetPrority({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    TemplateDetailsViewModel viewModel,
  ) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
                child: AssetRadio(
              name: 'NA',
              value: 0,
            )),
            Expanded(
              child: AssetRadio(name: 'High', value: 1),
            ),
            Expanded(
                child: AssetRadio(
              name: "Medium",
              value: 2,
            )),
          ],
        ),
        Row(
          children: [
            const Expanded(child: AssetRadio(name: 'Low', value: 3)),
            const Expanded(child: AssetRadio(name: 'Kamran', value: 4)),
            Expanded(child: Container())
          ],
        ),
      ],
    );
  }
}
