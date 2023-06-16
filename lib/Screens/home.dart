import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 20,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 182, 59, 184),
                  Color(0XFF00838F)
                ]),
              ),
            ),
            Container(
              height: 170,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 188, 61, 180),
                  Color(0XFF00838F)
                ]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20.0, top: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Dashboard",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.1),
                                  blurRadius: 8,
                                  spreadRadius: 3)
                            ],
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          // padding: const EdgeInsets.all(5),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/2167673/pexels-photo-2167673.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 90,
          right: 0,
          left: 102,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            // width: MediaQuery.of(context).size.width * 0.85,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 159, 67, 159)
                        .withOpacity(.09),
                    blurRadius: 8,
                    spreadRadius: 3,
                    offset: const Offset(0, 10),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 80,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        hintText(text: "Register No: "),
                        hintText(text: "Branch: "),
                        hintText(text: "Student category: "),
                        hintText(text: "Year / Semester: "),
                        hintText(text: "Mentor: "),
                        hintText(text: "Boarding /Bus Details: "),
                        hintText(text: "Warden: "),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 170,
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        mainText(text: "111CS5000"),
                        Container(
                            child: mainText(
                                text: "Information Science and Engineering")),
                        mainText(text: "LATERAL"),
                        mainText(text: "IV Year /Semester-7"),
                        mainText(text: "VijayKumar M / 1234567890"),
                        mainText(text: "Self"),
                        mainText(text: "---"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 200,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                badges.Badge(
                  position: badges.BadgePosition.topEnd(end: 50),
                  onTap: () => dialog(context),
                  badgeContent: const Icon(
                    Icons.priority_high,
                    color: Colors.white,
                    size: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                          onTap: () => dialog(context),
                          child: CircleAvatar(
                            maxRadius: 27,
                            backgroundColor: Colors.green,
                            child: FittedBox(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '86.3%',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Attendence',
                        style: TextStyle(
                            color: Colors.green.shade700,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: CircleAvatar(
                          maxRadius: 24,
                          backgroundColor: Colors.blue,
                          child: FittedBox(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '8.7%',
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'CGPA',
                          style: TextStyle(
                              color: Colors.blue.shade700,
                              // fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: CircleAvatar(
                          maxRadius: 24,
                          backgroundColor: Colors.grey,
                          child: FittedBox(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              '4',
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Daily Assessment Test',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            // fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Today's Attendance Status",
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            )),
        Positioned(
          top: 480,
          left: 20,
          child: Container(
            height: 100,
            child: Row(
              children: [
                SizedBox(width: 100, child: gradientContainer('FN', "OD")),
                const SizedBox(width: 10),
                SizedBox(width: 100, child: gradientContainer('AN', "OD")),
                const SizedBox(width: 10),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 1)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 182, 59, 184).withOpacity(0.4),
                      const Color.fromARGB(255, 182, 59, 184).withOpacity(0.4),
                    ]),
                  ),
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Yesterday Hostle Attendance",
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'NA',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                // const SizedBox(width: 10),
                // SizedBox(width: 100, child: gradientContainer('FN', "OD")),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
        Positioned(
          top: 600,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Leave Detail's",
                    style: GoogleFonts.roboto(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(height: 10),
              SizedBox(
                // height: 100,
                // width: 600,
                child: Row(
                  children: [
                    gradient('Total Working Days', "110"),
                    const SizedBox(width: 10),
                    gradient('Total Days Present', "100"),
                    const SizedBox(width: 10),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 1)
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(colors: [
                          const Color(0XFF00838F).withOpacity(0.3),
                          const Color(0XFF00838F).withOpacity(0.3),
                        ]),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "No of Days Absent",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '6.90',
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  gradient(String text, String text1) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1)
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(colors: [
          const Color(0XFF00838F).withOpacity(0.3),
          const Color(0XFF00838F).withOpacity(0.3),
        ]),
      ),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              text1,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  gradientContainer(String text, String text1) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1)
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 182, 59, 184).withOpacity(0.4),
          const Color.fromARGB(255, 182, 59, 184).withOpacity(0.4),
        ]),
      ),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              text1,
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  hintText({String? text}) {
    return Text(
      text!,
      style: GoogleFonts.roboto(
          fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.black54),
    );
  }

  mainText({String? text}) {
    return Text(
      text!,
      // overflow: TextOverflow.visible,
      style: GoogleFonts.roboto(
          fontWeight: FontWeight.bold, fontSize: 15.0, color: Colors.black87),
    );
  }

  dialog(context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.red.shade500,
        title: Text(
          '80% Attendance is Mandatory to Appear for End Semester Examination',
          style: GoogleFonts.roboto(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
