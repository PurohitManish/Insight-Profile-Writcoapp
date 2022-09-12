import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:writco_app/maninscreen/Accounts/Accounts_engaged.dart';
import 'package:writco_app/maninscreen/Accounts/Accounts_reached.dart';
import 'package:writco_app/maninscreen/Accounts/Tota_followers.dart';
//import 'package:writco_app/maninscreen/Story_view.dart';
import 'package:writco_app/maninscreen/toolbutton.dart';

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched2 = false;
  DateTime selectedDate = DateTime.now();
  bool date = false;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 80, 64, 158),
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
              child: Container(
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Text('Streak',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                            color: Color.fromARGB(255, 85, 85, 85))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Streak of Your Recent Reading & Writing',
                      style: GoogleFonts.openSans(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Color.fromARGB(255, 163, 162, 162)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 8, right: 8, top: 25),
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text('Write  |  Read',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.5,
                                          color:
                                              Color.fromARGB(255, 85, 85, 85))),
                                ],
                              ),
                              Text('Remind',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                    color: Color.fromARGB(255, 80, 64, 158),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 13),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Maintain a Weekly Streak to Top',
                                  style: GoogleFonts.openSans(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      color:
                                          Color.fromARGB(255, 163, 162, 162)),
                                ),
                                Transform.scale(
                                  scale: 0.9,
                                  child: Switch(
                                    value: isSwitched2,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched2 = value;
                                        print(isSwitched2);
                                      });
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 80, 64, 158),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, top: 5, bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              ToolButton(
                                backGroundColor: Colors.green,
                                onTap: () {},
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/check.svg',
                                    height: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day1',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(188, 90, 89, 89)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ToolButton(
                                backGroundColor: Colors.green,
                                onTap: () {},
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/check.svg',
                                    height: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day2',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(255, 85, 85, 85)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ToolButton(
                                backGroundColor: Colors.red,
                                onTap: () {},
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/xmark.svg',
                                    height: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day3',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(188, 90, 89, 89)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ToolButton(
                                backGroundColor: Colors.red,
                                onTap: () {},
                                child: Center(
                                  child: SvgPicture.asset(
                                    'assets/xmark.svg',
                                    height: 26,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day4',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(188, 90, 89, 89)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ToolButton(
                                  backGroundColor:
                                      Color.fromARGB(63, 196, 195, 195),
                                  onTap: () {},
                                  child: Center()),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day5',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(188, 90, 89, 89)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ToolButton(
                                  backGroundColor:
                                      Color.fromARGB(63, 196, 195, 195),
                                  onTap: () {},
                                  child: Center()),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day6',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(188, 90, 89, 89)),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              ToolButton(
                                  backGroundColor:
                                      Color.fromARGB(63, 196, 195, 195),
                                  onTap: () {},
                                  child: Center()),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Day7',
                                style: GoogleFonts.openSans(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromARGB(188, 90, 89, 89)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Divider(
                        height: 25,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Text(
                            'Check Popular List >',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 80, 64, 158),
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.3),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            height: 0,
          ),
          Divider(
            height: 20,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Insight Overview',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3),
                ),
                Container(
                  height: 30,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.black12),
                  child: TextButton(
                    onPressed: () {
                      date = !date;
                      _selectDate(context);
                    },
                    child: Row(
                      children: [
                        date
                            ? Text("${selectedDate.toLocal()}".split(' ')[0])
                            : Text(
                                'Last 7 Days',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.5,
                                    color: Colors.grey),
                              ),
                        Icon(Icons.arrow_drop_down_rounded,
                            size: 20, color: date ? Colors.blue : Colors.grey)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Accountsreached();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Accounts reached',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0.3),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '757',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  Text(
                                    '+ 58%',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.5,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Accountsengaged();
                        },
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.white,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Accounts engaged',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0.3),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '2033',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  Text(
                                    '+ 6,458%',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Totafollowers();
                        },
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.white,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total followers',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                letterSpacing: 0.3),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '25.4k',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5),
                                  ),
                                  Text(
                                    '+ 0.6%',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 0.5,
                                        color: Colors.green),
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.chevron_right_rounded,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
