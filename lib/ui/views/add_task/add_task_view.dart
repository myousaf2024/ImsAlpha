import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/common/app_bar/appbar.dart';
import '../../widgets/common/my_button/my_button.dart';
import '../../widgets/common/textfield/dropdown_field.dart';
import '../../widgets/common/textfield/textfield.dart';
import 'add_task_viewmodel.dart';

class AddTaskView extends StackedView<AddTaskViewModel> {
  const AddTaskView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddTaskViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: const MyAppBar(title: "Calendar"),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Add Task ",
                      style: TextStyle(color: kcPrimaryColor, fontSize: 12),
                    ),
                    verticalSpaceSmall,
                    const Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Calendar ID",
                                style: TextStyle(
                                    color: kcblackColor, fontSize: 16),
                              ),
                              Textfield(
                                width: 350,
                              ),
                              verticalSpaceTiny,
                              Text(
                                "Task ID",
                                style: TextStyle(
                                    color: kcblackColor, fontSize: 16),
                              ),
                              Textfield(
                                width: 350,
                              ),
                            ],
                          ),
                        ),
                        horizontalSpaceSmall,
                        Image(
                          image: AssetImage(qrCode),
                          height: 120,
                          width: 120,
                        )
                      ],
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Business Group",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    DropdownableTextField(
                        height: 42,
                        width: 350,
                        title: "Please Select",
                        items: viewModel.userinfo1,
                        selectedValue: viewModel.userinfoVar1,
                        onChanged: viewModel.changeUserinfo1,
                        isfill: false),
                    verticalSpaceTiny,
                    const Text(
                      "Site",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    DropdownableTextField(
                        height: 42,
                        width: 350,
                        title: "Please Select",
                        items: viewModel.userinfo1,
                        selectedValue: viewModel.userinfoVar1,
                        onChanged: viewModel.changeUserinfo1,
                        isfill: false),
                    verticalSpaceTiny,
                    const Text(
                      "Location",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    DropdownableTextField(
                        height: 42,
                        width: 350,
                        title: "Please Select",
                        items: viewModel.userinfo1,
                        selectedValue: viewModel.userinfoVar1,
                        onChanged: viewModel.changeUserinfo1,
                        isfill: false),
                    verticalSpaceTiny,
                    const Text(
                      "Project",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    DropdownableTextField(
                        height: 42,
                        width: 350,
                        title: "Please Select",
                        items: viewModel.userinfo1,
                        selectedValue: viewModel.userinfoVar1,
                        onChanged: viewModel.changeUserinfo1,
                        isfill: false),
                    verticalSpaceTiny,
                    const Text(
                      "Select Date",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    const Text(
                      "Task Name",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Task Color",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Description",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                      maxlines: 5,
                      maxcond: true,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Module List",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Subsection",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Assign To",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Send To",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Important Link",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "From Date",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "From Time",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "To Date",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "To Time",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Send Reminder",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    const Textfield(
                      width: 350,
                    ),
                    verticalSpaceTiny,
                    const Text(
                      "Asset Certification",
                      style: TextStyle(color: kcblackColor, fontSize: 16),
                    ),
                    verticalSpaceTiny,
                    DottedBorder(
                      color: kcgrey,
                      strokeWidth: 2,
                      dashPattern: const [
                        10,
                        5
                      ], // Adjust the dash and gap lengths as needed
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(8),
                      child: const SizedBox(
                        width: 350,
                        height: 345,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(uploadFile),
                              width: 51,
                              height: 51,
                            ),
                            Text(
                              "Drag & Drop Files",
                              style: TextStyle(
                                  color: kcblackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                  color: kcblackColor,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16),
                            ),
                            Text(
                              "Browse",
                              style: TextStyle(
                                  color: kcPrimaryColor,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                  fontSize: 16),
                            ),
                            Text(
                              "Maximum file size : 30mb",
                              style: TextStyle(
                                  color: kcgrey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    Align(
                      alignment: Alignment.centerRight,
                      child: MyButton(
                          width: 125,
                          height: 31,
                          title: "Add Task",
                          onTap: () {}),
                    ),
                    verticalSpaceMedium,
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  @override
  AddTaskViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddTaskViewModel();
}
