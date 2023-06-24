import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
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
      body: Column(
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
                  count: "115",
                  image: "assets/images/subjects.png",
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
