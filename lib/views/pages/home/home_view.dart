import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  List<Container>? addf;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 24.0,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  Text(
                    "Today's medications",
                    style: MyTextStyle.myTextStyle(
                      size: 16,
                      colors: ConstColor.colorDark60,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(children: addComponent()),
            ),
            //Calendar
            myTableCalendar(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ConstColor.colorBlue,
                  fixedSize: Size(MediaQuery.of(context).size.width, 54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Add new appointment'),
                onPressed: () {
                  setState(() {
                    addf!.clear();
                    // addf!.add(myComponent());
                  });
                }, //?ADD NEW APPOINTMENT
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Container> addComponent() {
    if (addf!.isEmpty) {
      return [
        Container(
          height: 347,
          alignment: Alignment.center,
          child: SizedBox(
            height: 87,
            width: 287,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "No medications",
                  style: MyTextStyle.myTextStyle(size: 26),
                ),
                Text(
                  'They will appear gere only when doctor adds them to your account',
                  textAlign: TextAlign.center,
                  style: MyTextStyle.myTextStyle(
                    size: 14,
                    colors: ConstColor.colorDark60,
                  ),
                ),
              ],
            ),
          ),
        ),
      ];
    } else {
      return addf!;
    }
    ;
  }

  Container myComponent() {
    return Container(
      height: 103,
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: ConstColor.colorBlue, width: 1.5),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/icons/pill.svg',
              color: ConstColor.colorBlue,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'Patacetomol',
                    style: MyTextStyle.myTextStyle(size: 18),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '250 mg',
                    style: MyTextStyle.myTextStyle(
                      size: 12,
                      colors: ConstColor.colorDark60,
                    ),
                  ),
                ],
              ),
              Text(
                '1 pill * 2 times a day',
                style: MyTextStyle.myTextStyle(
                  size: 14,
                  colors: ConstColor.colorDark60,
                ),
              ),
              Text(
                '1 pill taken',
                style: MyTextStyle.myTextStyle(
                  size: 14,
                  colors: ConstColor.colorDark60,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TableCalendar<dynamic> myTableCalendar() {
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
