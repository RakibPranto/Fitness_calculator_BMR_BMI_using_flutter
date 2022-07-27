import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  double height = 180;
  int _counter = 50;
  int _counter1 = 24;
  // ignore: prefer_typing_uninitialized_variables
  var bmi;
  bool isMale = true;
  String? result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0e21),
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      backgroundColor: const Color(0xff0a0e21),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 0, left: 15, right: 15),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Card(
                              color: isMale == true
                                  ? Colors.teal
                                  : const Color(0xff0a0e21).withOpacity(0.5),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.70,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                    color: const Color(0xff4b4b5b)
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Column(children: const [
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Icon(
                                        Icons.male,
                                        color: Colors.white,
                                        size: 100,
                                      ),
                                    ),
                                    Text(
                                      "MALE",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 16),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              color: isMale == false
                                  ? Colors.teal
                                  : const Color(0xff0a0e21).withOpacity(0.5),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.70,
                                width: MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                    color: const Color(0xff4b4b5b)
                                        .withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Column(children: const [
                                    Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Icon(
                                        Icons.female,
                                        color: Colors.white,
                                        size: 100,
                                      ),
                                    ),
                                    Text(
                                      "FEMALE",
                                      style: TextStyle(
                                          color: Colors.white54, fontSize: 16),
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 2,
                    child: Card(
                      color: const Color(0xff0a0e21).withOpacity(0.5),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.70,
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: const Color(0xff4b4b5b).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Column(children: [
                            const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                "HEIGHT",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  height.toStringAsFixed(0),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "cm",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 20),
                                ),
                              ],
                            ),
                            SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    thumbShape: const RoundSliderThumbShape(
                                      enabledThumbRadius: 15.0,
                                    ),
                                    overlayShape: const RoundSliderOverlayShape(
                                        overlayRadius: 30.0),
                                    thumbColor: Colors.blue,
                                    overlayColor: Colors.blue.shade900,
                                    activeTrackColor: Colors.lightBlue,
                                    inactiveTrackColor:
                                        const Color(0xff8D8E98)),
                                child: Slider(
                                    value: height,
                                    min: 50,
                                    max: 300,
                                    onChanged: (double newValue) {
                                      setState(() {
                                        height = newValue;
                                      });
                                    }))
                          ]),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: const Color(0xff0a0e21).withOpacity(0.5),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.70,
                              width: MediaQuery.of(context).size.width * 0.40,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff4b4b5b).withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        "WEIGHT",
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "$_counter",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_counter > 0) {
                                                _counter--;
                                              }
                                            });
                                          },
                                          child: const CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xff4b4b5b),
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _counter++;
                                            });
                                          },
                                          child: const CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xff4b4b5b),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: const Color(0xff0a0e21).withOpacity(0.5),
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.70,
                              width: MediaQuery.of(context).size.width * 0.40,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff4b4b5b).withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(children: [
                                    const Padding(
                                      padding: EdgeInsets.all(6.0),
                                      child: Text(
                                        "AGE",
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "$_counter1",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_counter1 > 0) {
                                                _counter1--;
                                              }
                                            });
                                          },
                                          child: const CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xff4b4b5b),
                                            child: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              _counter1++;
                                            });
                                          },
                                          child: const CircleAvatar(
                                            radius: 20,
                                            backgroundColor: Color(0xff4b4b5b),
                                            child: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  bmi = _counter / (height * height) * 10000;
                  if (bmi < 19) {
                    result =
                        "Under Weight.Increase Your Calorie intake for a better health. Eat Healthy food and exercise daily.";
                  } else if (bmi < 24) {
                    result =
                        "Normal Weight. Maintain Your Calorie intake for a better health. Eat Healthy food and exercise daily.";
                  } else if (bmi > 24) {
                    result =
                        "Over Weight.Decrease Your Calorie intake for a better health. Eat Healthy food and exercise daily.";
                  }
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Result!"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Ok"),
                            ),
                          ],
                          content: SizedBox(
                            height: MediaQuery.of(context).size.height * .16,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Your BMI is:${bmi.toStringAsFixed(2)}"),
                                Text("Your BMI shows you are at $result",
                                    textAlign: TextAlign.justify),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 20,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffea1554),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: const Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
