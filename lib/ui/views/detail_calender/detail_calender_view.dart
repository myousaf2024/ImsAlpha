import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../common/app_colors.dart';
import '../../widgets/common/app_bar/appbar.dart';
import 'detail_calender_viewmodel.dart';

class DetailCalenderView extends StackedView<DetailCalenderViewModel> {
  final int year;
  final int month;
  const DetailCalenderView({Key? key, required this.month, required this.year})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailCalenderViewModel viewModel,
    Widget? child,
  ) {
    DateTime currentDate = DateTime.now();

    return Scaffold(
      appBar: const MyAppBar(title: "Calendar 2024"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Year Navigation Row
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: () {
                        viewModel.decreaseYear();
                      },
                    ),
                    Text(
                      '${viewModel.focusedYear.year}',
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: kcPrimaryColor,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.chevron_right),
                      onPressed: () {
                        viewModel.increaseYear();
                      },
                    ),
                  ],
                ),
              ),

              // Display calendars for the selected month and all following months
              for (int i = month; i <= 12; i++) ...[
                // Display each month heading
                GestureDetector(
                  onTap: viewModel.navigateToCalenderMonthlyView,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Text(
                      DateFormat.MMMM()
                          .format(DateTime(viewModel.focusedYear.year, i, 1)),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color:
                            i == currentDate.month ? kcweekDay : kcPrimaryColor,
                      ),
                    ),
                  ),
                ),

                // Display the calendar for the month
                TableCalendar(
                  firstDay: DateTime(viewModel.focusedYear.year, i, 1),
                  lastDay: DateTime(viewModel.focusedYear.year, i + 1, 0),
                  focusedDay: DateTime(viewModel.focusedYear.year, i, 1),
                  calendarFormat: CalendarFormat.month,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  headerVisible: false,
                  daysOfWeekVisible: true,
                  availableGestures: AvailableGestures.all,
                  daysOfWeekStyle: DaysOfWeekStyle(
                      dowTextFormatter: (date, locale) =>
                          DateFormat.E(locale).format(date)[0],
                      weekdayStyle: const TextStyle(
                        color: kcweekDay,
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
                  onDaySelected: (selectedDay, focusedDay) {
                    // Navigate to the next screen when any date is clicked
                    viewModel.navigateToAddTaskView();
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  DetailCalenderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailCalenderViewModel();
}
