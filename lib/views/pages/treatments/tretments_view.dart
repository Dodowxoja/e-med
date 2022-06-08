import 'package:e_med/core/components/my_app_bar.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TreatmentsView extends StatefulWidget {
  const TreatmentsView({Key? key}) : super(key: key);

  @override
  State<TreatmentsView> createState() => _TreatmentsViewState();
}

class _TreatmentsViewState extends State<TreatmentsView> {
  final List<String> _categories = [
    'Current treatment',
    'Medical history',
    'Drug history',
  ];

  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

  final List<Map<int, List>> mockData = [
    {
      0: ['Aortic Aneurysm', "Ma'murov Abbos", 'Family Clinic №42'],
      1: ['Fibromyalgia', 'Nazirov Muxtor', 'Family Clinic №42'],
    },
    {
      0: [
        'Anthrax [Bacillus anthracis Infection]',
        'Esther Howard',
        'Clinic Medion',
        '30.11.2021',
      ],
      1: [
        'Adverse Childhood Experiences (ACE)',
        'Jenny Wilson',
        'Shox Nur Shifo Clinic',
        '05.08.2021',
      ],
      2: [
        'Aspergillus Infection',
        'Darrell Steward',
        'Tashkent International Clinic',
        '01.07.2021'
      ],
      3: ['Arthritis', 'Ralph Edwards', 'Family Clinic №42', '27.06.2021'],
    },
    {
      0: [
        'Dilatroban',
        '250 mg',
        '30.11.2021 - 05.12.2021',
        '2 times a day',
        '',
        ''
      ],
      1: [
        'Tropbove',
        '100 ml',
        '11.05.2021 - 16.05.2021',
        '3 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
      2: [
        'Tropiprazole',
        '500 mg',
        '05.03.2021 - 12.03.2021',
        '4 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
      3: [
        'Viriboltocin',
        '100 mg',
        '28.12.2020 - 02.01.2021',
        '5 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
      4: [
        'Troppamide',
        '400 mg',
        '18.11.2020 - 22.11.2020',
        '6 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
      5: [
        'Rifaflurane',
        '200 ml',
        '14.02.2020 - 20.02.2020',
        '7 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
      6: [
        'Virafibatide',
        '800 mg',
        '01.01.2020 - 08.01.2020',
        '8 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
      7: [
        'Somitril',
        '500 ml',
        '27.11.2019 - 05.12.2019',
        '9 times a day',
        'Multiple sclerosis',
        'Consume without water. It lessens the effect'
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        centerTitle: true,
        context: context,
        preferedSizeHeight: 0.12,
        leading: Image.asset("assets/images/profile1.png"),
        title: Image.asset("assets/images/e-med_blue_min.png"),
        action: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/bell.svg"),
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 40),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, __) => Padding(
                padding: const EdgeInsets.only(left: 13),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.transparent,
                  ),
                  child: Text(
                    _categories[__],
                    style: TextStyle(
                      color: _selectedIndex == __
                          ? ConstColor.colorBlue
                          : ConstColor.colorDark60,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    _onSelected(__);
                  },
                ),
              ),
              itemCount: _categories.length,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          if (0 == _selectedIndex) {
            //!Current treatment
            return currentTreatment(
              mockData[0][index]![0].toString(),
              mockData[0][index]![1].toString(),
              mockData[0][index]![2].toString(),
            );
          } else if (1 == _selectedIndex) {
            //!Medical history
            return medicalHistory(
              mockData[1][index]![0].toString(),
              mockData[1][index]![1].toString(),
              mockData[1][index]![2].toString(),
              mockData[1][index]![3].toString(),
            );
          } else if (2 == _selectedIndex) {
            //!Drug history
            return drugHistory(
                mockData[2][index]![0].toString(),
                mockData[2][index]![1].toString(),
                mockData[2][index]![2].toString(),
                mockData[2][index]![3].toString(),
                'Multiple sclerosis',
                'Consume without water. It lessens the effect');
          } else {
            return Container();
          }
        },
        itemCount: mockData[_selectedIndex].length,
      ),
    );
  }

  Padding currentTreatment(name1, name2, name3) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(name1), Text(name2), Text(name3)],
        ),
        onTap: () {},
      ),
    );
  }

  Padding medicalHistory(name1, name2, name3, name4) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name1),
                Text(name2),
                Row(children: [Text(name3), Text(name4)]),
              ],
            ),
            const Icon(Icons.next_plan),
          ],
        ),
        onTap: () {},
      ),
    );
  }

  Padding drugHistory(name, dose, date, times, associated, comments) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: MyTextStyle.textStyle(
                    size: 18,
                    colors: ConstColor.colorDark100,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SvgPicture.asset('assets/icons/forward_icon.svg')
              ],
            ),
            const SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  dose,
                  style: MyTextStyle.textStyle(colors: ConstColor.colorDark60),
                ),
                Text(
                  date,
                  style: MyTextStyle.textStyle(colors: ConstColor.colorDark60),
                )
              ],
            ),
            const SizedBox(height: 16),
          ],
        ),
        onTap: () {
          Navigator.pushReplacementNamed(context, '/route');
        },
      ),
    );
  }
}
