import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/my_button/icon_button.dart';
import 'package:stacked/stacked.dart';

import '../asset_form_card_viewmodel.dart';

class AssetFormCardViewListView
    extends ViewModelWidget<AssetFormCardViewModel> {
  final bool islib;
  const AssetFormCardViewListView({Key? key, required this.islib})
      : super(key: key);

  @override
  Widget build(
    BuildContext context,
    AssetFormCardViewModel viewModel,
  ) {
    return ListView.builder(
      itemCount: viewModel.assets.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final asset = viewModel.assets[index];
        return Card(
          color: kcSkyblueLightColor,
          margin: const EdgeInsets.only(bottom: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Template No: ${asset['templateNo']}'),
                    verticalSpaceTiny,
                    Text('Form Title: ${asset['name']}'),
                    verticalSpaceTiny,
                    SizedBox(
                        width: screenWidth(context) / 1.8,
                        child:
                            Text('Form Description: ${asset['description']}')),
                    verticalSpaceTiny,
                    Row(
                      children: [
                        const Text('Status: '),
                        Text(
                          asset['status']!,
                          style: TextStyle(
                            color: asset['status'] == 'Open'
                                ? Colors.green
                                : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 33.0,
                      backgroundImage: AssetImage(asset['image']!),
                    ),
                    verticalSpaceTiny,
                    MyIconButton(
                      title: "Open",
                      rightIcon: Icons.open_in_new,
                      onTap: () {
                        viewModel.navigateToTemplateDetail(index, islib);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
