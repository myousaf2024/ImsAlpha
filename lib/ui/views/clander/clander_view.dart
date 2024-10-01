import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lms_alpha/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../widgets/common/app_bar/appbar.dart';
import 'clander_viewmodel.dart';

class ClanderView extends StackedView<ClanderViewModel> {
  const ClanderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ClanderViewModel viewModel,
    Widget? child,
  ) {
    final DateTime currentDate = DateTime.now();
    return Scaffold(
      appBar: const MyAppBar(title: "Calendar 2024"),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                          color: kcPrimaryColor),
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
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 7,
                ),
                itemCount: 12,
                itemBuilder: (context, index) {
                  DateTime firstDayOfMonth =
                      DateTime(viewModel.focusedYear.year, index + 1, 1);
                  bool isCurrentMonth =
                      currentDate.year == viewModel.focusedYear.year &&
                          currentDate.month == (index + 1);

                  return GestureDetector(
                    onTap: () {
                      viewModel.navigateToDetailCalenderView(index);
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Text(
                            DateFormat.MMMM().format(firstDayOfMonth),
                            style: TextStyle(
                              fontSize: 16,
                              color: isCurrentMonth ? kcweekDay : kcblackColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: TableCalendar(
                            daysOfWeekStyle: DaysOfWeekStyle(
                                dowTextFormatter: (date, locale) =>
                                    DateFormat.E(locale).format(date)[0],
                                weekdayStyle: const TextStyle(
                                  color: kcweekDay,
                                  fontSize: 10,
                                )),
                            rowHeight: 20.0,
                            focusedDay: firstDayOfMonth,
                            firstDay:
                                DateTime(viewModel.focusedYear.year, 1, 1),
                            lastDay:
                                DateTime(viewModel.focusedYear.year, 12, 31),
                            calendarFormat: CalendarFormat.month,
                            startingDayOfWeek: StartingDayOfWeek.monday,
                            daysOfWeekVisible: true,
                            headerVisible: false,
                            availableGestures: AvailableGestures.none,
                            calendarStyle: CalendarStyle(
                              cellMargin: const EdgeInsets.all(0.8),
                              defaultTextStyle: const TextStyle(
                                fontSize: 10,
                              ),
                              weekendTextStyle: const TextStyle(
                                fontSize: 10,
                              ),
                              todayDecoration: BoxDecoration(
                                color: kcweekDay.withOpacity(0.5),
                                shape: BoxShape.rectangle,
                              ),
                              todayTextStyle: const TextStyle(
                                color: kcblackColor,
                                fontSize: 10,
                              ),
                              outsideDaysVisible: false,
                            ),
                            onDaySelected: (selectedDay, focusedDay) {
                              // Navigate to the next screen when any date is clicked
                              viewModel.navigateToAddTaskView();
                            },
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
  ClanderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ClanderViewModel();
}
