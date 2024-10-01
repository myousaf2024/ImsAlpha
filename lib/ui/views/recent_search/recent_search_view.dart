import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/responsive_gridview.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield.dart';
import 'package:stacked/stacked.dart';

import 'recent_search_viewmodel.dart';

class RecentSearchView extends StackedView<RecentSearchViewModel> {
  const RecentSearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RecentSearchViewModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recent Searches",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Text(
                "Show All",
                style: TextStyle(
                  fontSize: getResponsiveMediumFontSize(context),
                  fontWeight: FontWeight.w700,
                  color: kcgrey,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          verticalSpaceSmall,
          const Textfield(
            width: 370,
            height: 40,
            title: "Ticket # 8337878736736356356353",
            suffixIcon: Icon(
              Icons.close,
              size: 20,
            ),
          ),
          verticalSpaceSmall,
          const Textfield(
            width: 370,
            height: 40,
            title: "Ticket # 8337878736736356356353",
            suffixIcon: Icon(
              Icons.close,
              size: 20,
            ),
          ),
          verticalSpaceSmall,
          const Text(
            "Browse All",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          ),
          verticalSpaceSmall,
          ResponsiveGridView(
            itemCount: viewModel.itemsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                // onTap: viewModel.navigateToHealthAndAfetyView,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                  decoration: BoxDecoration(
                    color: kcPrimaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: kcPrimaryColor, width: 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        viewModel.itemsList[index]["icon"],
                        height: screenWidth(context) / 7,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        viewModel.itemsList[index]["title"],
                        style: const TextStyle(color: kcwhiteColor),
                      ),
                    ],
                  ),
                ),
              );
            },
            crossAxisCount: 3,
            spacing: 10.0,
            aspectRatio: 0.9,
          ),
        ],
      ),
    );
  }

  @override
  RecentSearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RecentSearchViewModel();
}
