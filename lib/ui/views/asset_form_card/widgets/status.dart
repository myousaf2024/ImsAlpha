import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import '../asset_form_card_viewmodel.dart';

class AssetFormCardViewStatus extends ViewModelWidget<AssetFormCardViewModel> {
  const AssetFormCardViewStatus({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormCardViewModel viewModel,
  ) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: viewModel.statusItems.map((statusItem) {
          return StatusItemWidget(
            count: statusItem.count,
            label: statusItem.label,
            color: statusItem.color,
          );
        }).toList(),
      ),
    );
  }
}

class StatusItemWidget extends ViewModelWidget<AssetFormCardViewModel> {
  final String count;
  final String label;
  final Color color;

  const StatusItemWidget({
    Key? key,
    required this.count,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, AssetFormCardViewModel viewModel) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: color,
              width: 2,
            ),
          ),
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.transparent,
            child: Text(
              count,
            ),
          ),
        ),
        horizontalSpaceTiny,
        Text(
          label,
          style: const TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
        horizontalSpaceTiny,
      ],
    );
  }
}
