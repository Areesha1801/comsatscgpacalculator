import 'package:comsatscgpacalculator/calculatorBrain/sgpa_brain.dart';
import 'package:comsatscgpacalculator/mains/cgpa.dart';
import 'package:comsatscgpacalculator/mains/gpa.dart';
import 'package:comsatscgpacalculator/mains/sgpa.dart';
import 'package:flutter/material.dart';
import 'package:comsatscgpacalculator/screens/resultPages/sgpa_result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../home_page.dart';
import 'package:comsatscgpacalculator/components/bottom_button.dart';
import 'package:comsatscgpacalculator/components/icon_content.dart';
import 'package:comsatscgpacalculator/components/reusable_card.dart';
import 'package:comsatscgpacalculator/components/round_icon_button.dart';

SGPABrain obj = SGPABrain();

class SGPAAppPage extends StatefulWidget {
  const SGPAAppPage({Key key}) : super(key: key);
  static double holder_2 = 1;
  static List<int> myList_2 = [];
  @override
  _SGPAAppPageState createState() => _SGPAAppPageState();
}

class _SGPAAppPageState extends State<SGPAAppPage> {
  double subjectGpa = 4;
  double subjectCreditHours = 4;
  double sumOfCredits = 0;
  double finalGpa = 0;
  double store = 0;
  double sStore = 0;
  int count = 1;
  int noOfSubjects = 0;
  double dropdownValue_2 = 1;
  List<double> subjectNo = [1, 2, 3, 4, 5, 6];
  void getDropDownItem() {
    setState(() {
      SGPAAppPage.holder_2 = dropdownValue_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('SGPA Calculator'),
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
                          label: 'Choose Number of Subjects',
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
                        items: subjectNo
                            .map<DropdownMenuItem<double>>((double value) {
                          return DropdownMenuItem<double>(
                            value: value,
                            child: Text(value.toString()),
                          );
                        }).toList(),
                      ),
                      Text(
                        'Choose GPA of subject $count',
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
                          'Subject GPA',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          subjectGpa.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    if (subjectGpa == 4) {
                                      subjectGpa = 3.7;
                                    } else if (subjectGpa == 3.7) {
                                      subjectGpa = 3.3;
                                    } else if (subjectGpa == 3.3) {
                                      subjectGpa = 3.0;
                                    } else if (subjectGpa == 3.0) {
                                      subjectGpa = 2.7;
                                    } else if (subjectGpa == 2.7) {
                                      subjectGpa = 2.3;
                                    } else if (subjectGpa == 2.3) {
                                      subjectGpa = 2.0;
                                    } else if (subjectGpa == 2.0) {
                                      subjectGpa = 1.7;
                                    } else if (subjectGpa == 1.7) {
                                      subjectGpa = 1.3;
                                    } else {
                                      subjectGpa = 0.0;
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
                                  if (subjectGpa == 4) {
                                    subjectGpa = 4;
                                  } else if (subjectGpa == 3.7) {
                                    subjectGpa = 4;
                                  } else if (subjectGpa == 3.3) {
                                    subjectGpa = 3.7;
                                  } else if (subjectGpa == 3.0) {
                                    subjectGpa = 3.3;
                                  } else if (subjectGpa == 2.7) {
                                    subjectGpa = 3.0;
                                  } else if (subjectGpa == 2.3) {
                                    subjectGpa = 2.7;
                                  } else if (subjectGpa == 2.0) {
                                    subjectGpa = 2.3;
                                  } else if (subjectGpa == 1.7) {
                                    subjectGpa = 2.0;
                                  } else if (subjectGpa == 1.3) {
                                    subjectGpa = 1.7;
                                  } else if (subjectGpa == 0.0) {
                                    subjectGpa = 1.3;
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
                          subjectCreditHours.toString(),
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
                                    if (subjectCreditHours == 4) {
                                      subjectCreditHours = 3;
                                    } else if (subjectCreditHours == 3) {
                                      subjectCreditHours = 2;
                                    } else if (subjectCreditHours == 2) {
                                      subjectCreditHours = 1;
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
                                    if (subjectCreditHours == 4) {
                                      subjectCreditHours = 4;
                                    } else if (subjectCreditHours == 3) {
                                      subjectCreditHours = 4;
                                    } else if (subjectCreditHours == 2) {
                                      subjectCreditHours = 3;
                                    } else if (subjectCreditHours == 1) {
                                      subjectCreditHours = 2;
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
                store = subjectGpa * subjectCreditHours;
                sStore = sStore + store;
                sumOfCredits = sumOfCredits + subjectCreditHours;
                finalGpa = (sStore) / sumOfCredits;
                obj.showResult(finalGpa);
                count = 0;
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => sgpa_result_page()));
              }
              count++;
              sumOfCredits = sumOfCredits + subjectCreditHours;
              store = subjectGpa * subjectCreditHours;
              sStore = sStore + store;
              getDropDownItem();
            },
          ),
        ],
      ),
    );
  }
}
