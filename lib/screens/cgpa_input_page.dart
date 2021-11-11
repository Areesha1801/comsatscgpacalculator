import 'package:comsatscgpacalculator/calculatorBrain/cgpa_brain.dart';
import 'package:comsatscgpacalculator/mains/cgpa.dart';
import 'package:comsatscgpacalculator/mains/gpa.dart';
import 'package:comsatscgpacalculator/mains/sgpa.dart';
import 'package:comsatscgpacalculator/screens/resultPages/cgpa_result_page.dart';
import 'package:flutter/material.dart';
import '../home_page.dart';
import 'package:comsatscgpacalculator/screens/resultPages/sgpa_result_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import 'package:comsatscgpacalculator/components/bottom_button.dart';
import 'package:comsatscgpacalculator/components/icon_content.dart';
import 'package:comsatscgpacalculator/components/reusable_card.dart';
import 'package:comsatscgpacalculator/components/round_icon_button.dart';

CGPABrain obj = CGPABrain();

class CGPAAppPage extends StatefulWidget {
  const CGPAAppPage({Key key}) : super(key: key);
  static double holder_2 = 1;
  static List<int> myList_2 = [];
  @override
  _CGPAAppPageState createState() => _CGPAAppPageState();
}

class _CGPAAppPageState extends State<CGPAAppPage> {
  double semesterGpa = 4;
  String helper;
  double semesterCreditHours = 4;
  double sumOfCredits = 0;
  double finalGpa = 0;
  double store = 0;
  double sStore = 0;
  int count = 1;
  double dropdownValue_2 = 1;
  List<double> semesterNo = [1, 2, 3, 4, 5, 6, 7, 8];
  void getDropDownItem() {
    setState(() {
      CGPAAppPage.holder_2 = dropdownValue_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('CGPA Calculator'),
        actions: [
          IconButton(
            icon: Image.asset('images/img2.png'),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Row(
        children: [
          Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                  child: Text(
                    'Areesha Asif',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text("GPA"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const gpa()));
                  },
                ),
                ListTile(
                  title: const Text("SGPA"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const sgpa()));
                  },
                ),
                ListTile(
                  title: const Text("CGPA"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const cgpa()));
                  },
                ),
                ListTile(
                  title: const Text("Home"),
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ReusableCard(
                        onPress: () {
                          setState(() {});
                        },
                        colour: null,
                        cardChild: const IconContent(
                          icon: FontAwesomeIcons.addressBook,
                          label: 'Choose Number of Semesters',
                          label1: '',
                        ),
                      ),
                      DropdownButton<double>(
                        value: dropdownValue_2,
                        icon: const Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        underline: Container(
                          height: 2,
                          color: Colors.teal,
                        ),
                        onChanged: (data) {
                          setState(() {
                            dropdownValue_2 = data;
                          });
                        },
                        items: semesterNo
                            .map<DropdownMenuItem<double>>((double value) {
                          return DropdownMenuItem<double>(
                            value: value,
                            child: Text(value.toString()),
                          );
                        }).toList(),
                      ),
                      Text(
                        'Choose GPA and Credit Hours of semester $count',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Semester GPA',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          semesterGpa.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (semesterGpa == 0.0) {
                                      semesterGpa = 0.0;
                                    } else {
                                      helper = (semesterGpa - 0.01)
                                          .toStringAsFixed(2);
                                      semesterGpa = double.parse(helper);
                                    }
                                  });
                                }),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  if (semesterGpa == 4) {
                                    semesterGpa = 4;
                                  } else {
                                    helper =
                                        (semesterGpa + 0.01).toStringAsFixed(2);
                                    semesterGpa = double.parse(helper);
                                  }
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Credit Hours',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          semesterCreditHours.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(
                                  () {
                                    if (semesterCreditHours == 2) {
                                      semesterCreditHours = 2;
                                    } else {
                                      semesterCreditHours--;
                                    }
                                  },
                                );
                              },
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    if (semesterCreditHours == 24) {
                                      semesterCreditHours = 24;
                                    } else {
                                      semesterCreditHours++;
                                    }
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULATE',
            onTap: () {
              if (count == dropdownValue_2) {
                store = semesterGpa * semesterCreditHours;
                sStore = sStore + store;
                sumOfCredits = sumOfCredits + semesterCreditHours;
                finalGpa = (sStore) / sumOfCredits;
                obj.showResult(finalGpa);
                count = 0;
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => cgpa_result_page()));
              }
              count++;
              sumOfCredits = sumOfCredits + semesterCreditHours;
              store = semesterGpa * semesterCreditHours;
              sStore = sStore + store;
              getDropDownItem();
            },
          ),
        ],
      ),
    );
  }
}
