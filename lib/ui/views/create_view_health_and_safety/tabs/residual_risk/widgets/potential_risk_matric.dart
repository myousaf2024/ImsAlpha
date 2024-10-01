import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:lms_alpha/ui/views/create_view_health_and_safety/tabs/residual_risk/residual_risk_viewmodel.dart';
import 'package:stacked/stacked.dart';

class ResidualRiskMatric extends ViewModelWidget<ResidualRiskViewModel> {
  const ResidualRiskMatric({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    ResidualRiskViewModel viewModel,
  ) {
    return SingleChildScrollView(
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
                              color: viewModel.getTextColorForCell(cellColor)),
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
    );
  }
}
