import 'package:d_chart/d_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:school_ms_mobile/Constants/appColors.dart';
import 'package:school_ms_mobile/widgets/boxContainer.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: BoxContainer(
                size: MediaQuery.of(context).size.width,
                title: "Donations",
                count: "145622k",
                image: "assets/images/donations.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BoxContainer(
                    size: MediaQuery.of(context).size.width/2.22,
                    title: "Teachers",
                    count: "1248",
                    image: "assets/images/activeTeachers.png",
                  ),
                  BoxContainer(
                    size: MediaQuery.of(context).size.width/2.22,
                    title: "Staffs",
                    count: "115",
                    image: "assets/images/staffs.png",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  BoxContainer(
                    size: MediaQuery.of(context).size.width/2.22,
                    title: "Students",
                    count: "1248",
                    image: "assets/images/activeStudents.png",
                  ),
                  BoxContainer(
                    size: MediaQuery.of(context).size.width/2.22,
                    title: "Subjects",
                    count: "25",
                    image: "assets/images/subjects.png",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text('Daily User Attendance',style: TextStyle(
                      color: GlobalVariables.textColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width/2,
                child:DChartBar(
                  data: const [
                    {
                      'id': 'Bar',
                      'data': [
                        {'domain': 'MON', 'measure': 2621/1000},
                        {'domain': 'TUE', 'measure': 2500/1000},
                        {'domain': 'WED', 'measure': 2550/1000},
                        {'domain': 'THU', 'measure': 2375/1000},
                        {'domain': 'FRI', 'measure': 2600/1000},
                        {'domain': 'SAT', 'measure': 2000/1000},
                        {'domain': 'SUN', 'measure': 1864/1000},
                      ],
                    },
                  ],
                  domainLabelPaddingToAxisLine: 16,
                  axisLineTick: 2,
                  axisLinePointTick: 2,
                  axisLinePointWidth: 3,
                  axisLineColor:GlobalVariables.mainColor,
                  measureLabelPaddingToAxisLine: 16,
                  barColor: (barData, index, id) => GlobalVariables.mainColor,
                  showBarValue: true,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffDADADA),
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Row(
                      children: [
                        Text('Today',style: TextStyle(
                            color: GlobalVariables.textColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: GlobalVariables.greenColor,
                    ),
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xffD0D0D0),
                            border: Border.all(
                              color: GlobalVariables.mainColor,
                              width: 2
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/activeCalendar.png',
                            scale: 10,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Meeting With Sports Club'.toUpperCase(),style:const TextStyle(
                                fontSize: 10,
                                color:Colors.white,
                                fontWeight: FontWeight.bold),
                            ),
                            const Text('8.30 - 9.15',style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: GlobalVariables.blueColor,
                    ),
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xffD0D0D0),
                            border: Border.all(
                              color: GlobalVariables.mainColor,
                              width: 2
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/activeCalendar.png',
                            scale: 10,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Parents Meeting'.toUpperCase(),style:const TextStyle(
                                fontSize: 10,
                                color:Colors.white,
                                fontWeight: FontWeight.bold),
                            ),
                            const Text('9.30 - 10.15',style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: GlobalVariables.orangeColor,
                    ),
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color:const Color(0xffD0D0D0),
                            border: Border.all(
                              color: GlobalVariables.mainColor,
                              width: 2
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/activeCalendar.png',
                            scale: 10,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Attitude Exam Grade 11 Students'.toUpperCase(),style:const TextStyle(
                                fontSize: 10,
                                color:Colors.white,
                                fontWeight: FontWeight.bold),
                            ),
                            const Text('11.00- 12.30',style:TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
