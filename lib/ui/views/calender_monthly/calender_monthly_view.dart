import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:lms_alpha/ui/widgets/common/app_bar/appbar.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

import 'calender_monthly_viewmodel.dart';

class CalenderMonthlyView extends StackedView<CalenderMonthlyViewModel> {
  const CalenderMonthlyView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CalenderMonthlyViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: const MyAppBar(title: "Calendar"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Year Navigation Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: viewModel.decreaseMonth,
                  ),
                  Text(
                    DateFormat.MMMM().format(DateTime(
                        viewModel.focusedDate.year,
                        viewModel.focusedDate.month,
                        1)),
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: viewModel.focusedDate.month ==
                              viewModel.currentDate.month
                          ? kcweekDay
                          : kcPrimaryColor,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: viewModel.increaseMonth,
                  ),
                ],
              ),

              // Display the calendar for the month
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: viewModel.decreaseDay,
                  ),
                  Expanded(
                    child: TableCalendar(
                      firstDay: DateTime(viewModel.focusedDate.year,
                          viewModel.focusedDate.month, 1),
                      lastDay: DateTime(viewModel.focusedDate.year,
                          viewModel.focusedDate.month + 1, 0),
                      focusedDay: viewModel.focusedDate,
                      calendarFormat: CalendarFormat.week,
                      startingDayOfWeek: StartingDayOfWeek.monday,
                      headerVisible: false,
                      daysOfWeekVisible: true,
                      availableGestures: AvailableGestures.all,
                      daysOfWeekStyle: DaysOfWeekStyle(
                          dowTextFormatter: (date, locale) =>
                              DateFormat.E(locale).format(date)[0],
                          weekdayStyle: const TextStyle(
                            color: kcweekDay,
                            fontWeight: FontWeight.w800,
                            fontSize: 12,
                          )),
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                          color: kcweekDay.withOpacity(0.5),
                          shape: BoxShape.rectangle,
                        ),
                        weekendTextStyle: const TextStyle(
                          fontSize: 12,
                          color: kcweekDay,
                        ),
                        todayTextStyle: const TextStyle(
                          color: kcblackColor,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: viewModel.increaseDay,
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: 24,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 52.0,
                          child: Text(
                              '${index + 1} ${index < 12 ? "AM" : "PM"}',
                              style: const TextStyle(fontSize: 14)),
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                            color: kcVeryLightGrey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CalenderMonthlyViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CalenderMonthlyViewModel();
}
