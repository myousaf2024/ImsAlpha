import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'textfield_model.dart';

class Textfield extends StackedView<TextfieldModel> {
  final TextEditingController? ctrl;
  final String? title;
  final Widget? suffixIcon;
  final double? height;
  final double width;
  final bool? obscureText;
  final int? maxlines;
  final bool? maxcond;
  final Widget? prefix;
  final double? value;
  final bool isfill;
  final FormFieldValidator<String>? validator;
  const Textfield(
      {Key? key,
      this.title,
      this.ctrl,
      this.height,
      required this.width,
      this.suffixIcon,
      this.obscureText,
      this.maxcond,
      this.maxlines,
      this.validator,
      this.value,
      this.prefix,
      this.isfill = false})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TextfieldModel viewModel,
    Widget? child,
  ) {
    return SizedBox(
      height: height,
      width: width,
      child: TextFormField(
        controller: ctrl,
        obscureText: obscureText ?? false,
        maxLines: maxlines ?? 1,
        minLines: maxcond == true ? maxlines : null,
        decoration: InputDecoration(
          hintText: title,
          //   hintStyle: TextStyle(color: kcblackColor),
          suffixIcon: suffixIcon,
          filled: true,
          prefix: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: prefix,
          ),
          fillColor: isfill ? kcfillColor : kcwhiteColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: kcgrey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: kcgrey),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        validator: validator,
      ),
    );
  }

  @override
  TextfieldModel viewModelBuilder(
    BuildContext context,
  ) =>
      TextfieldModel();
}
