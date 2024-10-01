import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/widgets/common/header/header.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/dropdown_field.dart';
import 'package:stacked/stacked.dart';

import 'potential_risk_viewmodel.dart';

class PotentialRiskView extends StackedView<PotentialRiskViewModel> {
  const PotentialRiskView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PotentialRiskViewModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        const Header(
          name: 'Potential Risk',
        ),
        Container(
          width: 399,
          decoration: BoxDecoration(
            border: Border.all(color: kcPrimaryColor),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpaceTiny,
                const Text(
                  "Severity",
                  style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 42,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
                verticalSpaceSmall,
                const Text(
                  "Likelyhood",
                  style: TextStyle(
                      color: kcblackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                verticalSpaceTiny,
                DropdownableTextField(
                  height: 42,
                  width: 350,
                  title: "Please Select",
                  items: viewModel.userinfo1,
                  selectedValue: viewModel.userinfoVar1,
                  onChanged: viewModel.changeUserinfo1,
                ),
              ],
            ),
          ),
        ),
        verticalSpaceSmall,
        const Header(
          name: 'Potential Risk Matrix',
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 550,
            decoration: BoxDecoration(
              border: Border.all(color: kcPrimaryColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Center(child: Text("Likelihood")),
                  Table(
                    border: TableBorder.all(),
                    children: viewModel.matrix.asMap().entries.map((entry) {
                      int rowIndex = entry.key;
                      List<String> row = entry.value;
                      return TableRow(
                        children: row.asMap().entries.map((cellEntry) {
                          int cellIndex = cellEntry.key;
                          String cell = cellEntry.value;

                          Color cellColor;
                          if (rowIndex == 0 || cellIndex == 0) {
                            cellColor = Colors.white;
                          } else {
                            cellColor = viewModel.getColorForCell(cell);
                          }

                          return Container(
                            color: cellColor,
                            padding: EdgeInsets.symmetric(
                                vertical: cellIndex == 0 ? 2 : 12),
                            child: Text(
                              cell,
                              style: TextStyle(
                                  color:
                                      viewModel.getTextColorForCell(cellColor)),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }).toList(),
                      );
                    }).toList(),
                  ),
                  verticalSpaceSmall,
                  const Center(child: Text("Likely Outcome of Event")),
                  Table(
                    border: TableBorder.all(),
                    children: viewModel.details.map((row) {
                      return TableRow(
                        children: row.map((cell) {
                          return Container(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              cell,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }).toList(),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
        ),
        verticalSpaceSmall,
      ],
    );
  }

  @override
  PotentialRiskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PotentialRiskViewModel();
}
