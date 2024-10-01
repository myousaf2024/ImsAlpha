import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/widgets/common/textfield/textfield_model.dart';
import 'package:stacked/stacked.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DropdownableTextField extends StackedView<TextfieldModel> {
  final String title;
  final List<String> items;
  final String? selectedValue;
  final double height;
  final double width;
  final bool isfill;
  final void Function(String?) onChanged;

  const DropdownableTextField(
      {super.key,
      required this.title,
      required this.height,
      required this.width,
      required this.items,
      required this.selectedValue,
      required this.onChanged,
      this.isfill = false});

  @override
  Widget builder(
    BuildContext context,
    TextfieldModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: isfill ? kcfillColor : kcwhiteColor,
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: kcgrey,
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
      ),
      alignment: Alignment.center,
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          value: selectedValue,
          isExpanded: true,
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(fontSize: 14, color: kcgrey),
              ),
            );
          }).toList(),
          onChanged: onChanged,
          dropdownStyleData: const DropdownStyleData(
            // offset: const Offset(-20, 0),
            scrollbarTheme: ScrollbarThemeData(
              radius: Radius.circular(40),
              // thickness: MaterialStateProperty.all(6),
              // thumbVisibility: MaterialStateProperty.all(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      ),
    );
  }

  @override
  TextfieldModel viewModelBuilder(BuildContext context) => TextfieldModel();
}
