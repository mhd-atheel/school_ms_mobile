import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school_ms_mobile/mainNavigation/dashboard.dart';

import 'Constants/appColors.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentIndex == 0
            ? 'Dashboard'
            : currentIndex == 1
                ? "Students"
                : currentIndex == 2
                    ? "Teachers"
                    : currentIndex == 3
                        ? "Calendar"
                        : "More"),
        actions: [
          Container(
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xffCCCCCC),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(0, -2),
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  offset: const Offset(0, -2),
                  blurRadius: 4,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: 13,
              ),
              onPressed: () {
                // Perform search action
              },
            ),
          ),
          IconButton(
            icon: Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xffCCCCCC),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(0, -2),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        offset: const Offset(0, -2),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const FaIcon(
                      FontAwesomeIcons.solidBell,
                      size: 13,
                    ),
                    onPressed: () {
                      // Perform search action
                    },
                  ),
                ),
                Positioned(
                  top:-5,
                  right: -1,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: const Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {
              // Perform notification action
            },
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(18),
              child: Image.asset(
                'assets/images/profile.png',
                width: 30,
                height: 30,
              ),
            ),
          ),
          SizedBox(width: 10,)
        ],
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    // Implement the content of each tab based on the selected index (_currentIndex)
    // You can use a widget like IndexedStack or a Navigator with multiple pages
    // Here's an example using IndexedStack:
    return IndexedStack(
      index: currentIndex,
      children: [
        // Add your tab content widgets here
        // Example:
        const DashBoard(),
        Container(
          color: Colors.red,
          child: const Center(child: Text('Tab 2')),
        ),
        Container(
          color: Colors.green,
          child: const Center(child: Text('Tab 3')),
        ),
        Container(
          color: Colors.yellow,
          child: const Center(child: Text('Tab 4')),
        ),
        Container(
          color: Colors.deepPurple,
          child: const Center(child: Text('Tab 5')),
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
 // Set your desired background color here

    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: GlobalVariables.mainColor,
      unselectedItemColor: Colors.grey.shade400,
      backgroundColor: const Color(0xffD0D0D0),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      onTap: (int newIndex) {
        // Update the selected index when a tab is tapped
        setState(() {
          currentIndex = newIndex;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/dashboard.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
          label: 'Dashboard',
          activeIcon: Image.asset(
            'assets/images/activeDashboard.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/students.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
          label: 'Students',
          activeIcon: Image.asset(
            'assets/images/activeStudents.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/teachers.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
          label: 'Teachers',
          activeIcon: Image.asset(
            'assets/images/activeTeachers.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/calendar.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
          label: 'Calendar',
          activeIcon: Image.asset(
            'assets/images/activeCalendar.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/more.png', width: 24, // Set the same width as above
            height: 24,
          ),
          label: 'More',
          activeIcon: Image.asset(
            'assets/images/activeMore.png',
            width: 24, // Set the same width as above
            height: 24,
          ),
        ),
      ],
    );
  }
}
