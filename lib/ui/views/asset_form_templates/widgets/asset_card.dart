import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../common/enums.dart';
import '../asset_form_templates_viewmodel.dart';

class AssetFormCard extends ViewModelWidget<AssetFormTemplatesViewModel> {
  final String name;
  final String imagePath;
  final AssetPages pageType;
  final String subName;

  const AssetFormCard(
      {Key? key,
      required this.name,
      required this.imagePath,
      required this.pageType,
      required this.subName})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormTemplatesViewModel viewModel,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: kcSkyblueLightColor,
        border: Border.all(color: kcLastLogin1),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 8.0),
          Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                    fontSize: 16.0, fontWeight: FontWeight.w500),
              ),
              pageType.name == "Meetings"
                  ? Text(
                      subName,
                      style: const TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w500),
                    )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}
