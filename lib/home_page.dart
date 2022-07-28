import 'package:bmi_calculator/calculator_page_BMI.dart';
import 'package:bmi_calculator/calculator_page_BMR.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0a0e21),
        title: const Center(
          child: Text(
            "HEALTH REPORT",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
      backgroundColor: const Color(0xff0a0e21),
      body: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: const Color(0xff4b4b5b).withOpacity(0.6),
                    child: const CircleAvatar(
                      radius: 88,
                      backgroundImage: AssetImage("images/img.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const CalculatorPage()));
                    },
                    child: Card(
                      color: const Color(0xff0a0e21).withOpacity(0.5),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.80,
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: const Color(0xff4b4b5b).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Text(
                                      "BMI CALCULATOR",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Text(
                                      "Body Mass Index",
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const BMRCalculator()));
                    },
                    child: Card(
                      color: const Color(0xff0a0e21).withOpacity(0.5),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.80,
                        width: MediaQuery.of(context).size.width * 0.90,
                        decoration: BoxDecoration(
                            color: const Color(0xff4b4b5b).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Text(
                                      "BMR CALCULATOR",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Center(
                                    child: Text(
                                      "Basal Metabolic Rate",
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height * .10,
                      width: MediaQuery.of(context).size.width * .8,
                      decoration: const BoxDecoration(
                        color: Color(0xff0a0e21),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            Text(
                              "Do, What you do best.",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
