import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            verticalSpaceSmall,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 34,
                    width: 302,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: kcblackColor.withOpacity(0.65)),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Row(
                      children: [
                        horizontalSpaceSmall,
                        const Icon(Icons.search),
                        horizontalSpaceMedium,
                        Text(
                          "Search",
                          style: TextStyle(
                            fontSize: 14,
                            color: kcblackColor.withOpacity(0.65),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.close),
                      ],
                    ),
                  ),
                  Text(
                    "Cancel",
                    style: TextStyle(color: kcblackColor.withOpacity(0.65)),
                  )
                ],
              ),
            ),
            verticalSpaceMedium,
            SizedBox(
              height: 28,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: viewModel.searchTabs.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        viewModel.tabIndex(index);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        margin: const EdgeInsets.only(right: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(color: kcgrey),
                            color: viewModel.selectIndex == index
                                ? kcPrimaryColor
                                : kcwhiteColor),
                        child: Center(
                            child: Text(
                          viewModel.searchTabs[index],
                          style: TextStyle(
                              color: viewModel.selectIndex == index
                                  ? kcwhiteColor
                                  : kcblackColor.withOpacity(0.65)),
                        )),
                      ),
                    );
                  }),
            ),
            verticalSpaceSmall,
            Expanded(
              child: SingleChildScrollView(
                child: viewModel.getScreen(viewModel.selectIndex),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
