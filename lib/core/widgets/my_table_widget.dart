import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class MyTableCalendar extends StatefulWidget {
  const MyTableCalendar({Key? key}) : super(key: key);

  @override
  State<MyTableCalendar> createState() => _MyTableCalendarState();
}

class _MyTableCalendarState extends State<MyTableCalendar> {
  CalendarFormat format = CalendarFormat.month;

  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: focusedDay,
      firstDay: DateTime.utc(2010, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      calendarFormat: format,
      onFormatChanged: (v) {
        format = v;
        setState(() {});
      },
      startingDayOfWeek: StartingDayOfWeek.monday,
      //Day Changed
      onDaySelected: (DateTime selectDay, DateTime focusDay) {
        selectedDay = selectDay;
        focusedDay = focusDay;
        setState(() {});
        print(focusedDay);
      },
      //To style the Calendar
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        selectedDecoration: BoxDecoration(
          color: ConstColor.colorBlue,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(color: ConstColor.colorWhite),
        todayDecoration: BoxDecoration(
            color: ConstColor.colorBlueSystem,
            borderRadius: BorderRadius.circular(10)),
      ),
      selectedDayPredicate: (DateTime date) {
        return isSameDay(selectedDay, date);
      },
    );
  }
}
