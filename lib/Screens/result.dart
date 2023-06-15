import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 180,
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(1),
              bottomLeft: Radius.circular(1),
            ),
            color: Colors.red),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Result',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Arrears',
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 4,
                ),
                CircleAvatar(
                  maxRadius: 30,
                  backgroundColor: Colors.white,
                  child: FittedBox(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '4',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
      Card(
        margin: const EdgeInsets.only(top: 140, left: 30, right: 30),
        color: Colors.white,
        elevation: 7,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 5.0,
                      percent: 0.7,
                      center: const Text("100%"),
                      progressColor: Colors.blueGrey,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text("IV SEM",
                        style: GoogleFonts.jost(
                            color: Colors.blueGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.7,
                    center: const Text("90%"),
                    progressColor: Colors.green,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text("V SEM",
                      style: GoogleFonts.jost(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularPercentIndicator(
                    radius: 40.0,
                    lineWidth: 5.0,
                    percent: 0.7,
                    center: const Text("70%"),
                    progressColor: Colors.pinkAccent,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text("VI SEM",
                      style: GoogleFonts.jost(
                          color: Colors.pinkAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ],
          ),
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(top: 320),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text("Semester Result",
                        style: GoogleFonts.jost(
                            color: Colors.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    DataTable(columns: const [
                      DataColumn(label: Text("Sem")),
                      DataColumn(label: Text("Course Title")),
                      DataColumn(label: Text("Result")),
                    ], rows: const [
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('FAIL'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                      DataRow(cells: [
                        DataCell(Text('5')),
                        DataCell(Text('Computer Sceience')),
                        DataCell(Text('PASS'))
                      ]),
                    ]),
                  ],
                ),
              ),
            ],
          ))
    ]);
  }
}
