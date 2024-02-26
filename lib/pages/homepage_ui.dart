import 'package:flutter/material.dart';
import 'package:movieappui_dart/pages/upcoming_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF0F111D),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Hello Aditya',
                       style: TextStyle(
                         fontSize: 28,
                         color: Colors.white,
                         fontWeight: FontWeight.w500
                       ),
                       ),
                       Text('What to Watch',
                         style: TextStyle(
                           // fontSize: 28,
                           color: Colors.white54,
                           // fontWeight: FontWeight.w500
                         ),
                       ),
                     ],
                   ),
                   ClipRRect(
                     borderRadius: BorderRadius.circular(30),
                     child: Image.asset('assets/profile1.png',
                     height: 60,
                     ),
                   ),
                 ],
               ),
             ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color(0xFF292B37),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // color: Colors.lightBlue,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.search,
                          color: Colors.white, size: 30,),
                        ),
                        Container(
                          width: 300,
                          child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.white54)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30),
                UpcomingWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
