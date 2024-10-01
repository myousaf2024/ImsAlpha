import 'package:flutter/material.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/common/app_strings.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar_model.dart';
import 'package:stacked/stacked.dart';

class MyAppBar extends StackedView<MyAppBarModel>
    implements PreferredSizeWidget {
  final String title;
  final Widget? action;
  final String? leadingImage;
  final bool? leadingVariable;
  const MyAppBar(
      {required this.title,
      this.action,
      this.leadingImage,
      this.leadingVariable,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    MyAppBarModel viewModel,
    Widget? child,
  ) {
    return AppBar(
      iconTheme: const IconThemeData(color: kcPrimaryColor),
      centerTitle: true,
      backgroundColor: kcwhiteColor,
      title: Text(
        title,
        style: const TextStyle(
            color: kcPrimaryColor, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      leading: leadingVariable == true
          ? Padding(
              padding: const EdgeInsets.only(left: 10),
              child: (leadingImage != null
                  ? Center(
                      child: Image(
                          width: 35,
                          image: AssetImage(
                            leadingImage!,
                          )),
                    )
                  : Container()),
            )
          : InkWell(
              onTap: () {
                viewModel.navigationService.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: kcPrimaryColor,
              )),
      actions: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset(profileImage),
        ),
        if (action != null)
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: action!,
          )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  MyAppBarModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyAppBarModel();
}
