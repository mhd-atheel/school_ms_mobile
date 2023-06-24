

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:school_ms_mobile/Constants/appColors.dart';
import 'package:school_ms_mobile/bottomNavigation.dart';








void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xffE5E5E5),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        appBarTheme:  AppBarTheme(
        backgroundColor: const Color(0xffE5E5E5),
          shape:const Border(
            bottom: BorderSide(width: 1.0, color: Color(0xffCCCCCC)),
          )
            ,
          titleTextStyle: GoogleFonts.poppins(
            textStyle: TextStyle(fontWeight: FontWeight.w600,
              color: GlobalVariables.mainColor,
              fontSize: 28,),
          )// Set the default background color for all AppBar widgets
      ),
      ),
      home: const BottomNavigation(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    List<dynamic> list =[];

  @override
  initState()  {

    super.initState();
  }

   // Future fetchTeacher  () async {
   //   var url = 'https://dull-blue-binturong-toga.cyclic.app/teacher/get-teacher';
   //   var response = await http.get(Uri.parse(url));
   //   var result = jsonDecode(response.body);
   //   for(var element in result){
   //     list.add(element);
   //     print(list);
   //   }
   //
   //
   // }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color:GlobalVariables.mainColor,
        ),
    );
  }
}

