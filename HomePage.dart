import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double myNumberRadiuse = 0.1;
  int percentageNumberText = 10;

  var userInputt = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.deepPurple.shade100,
      body: SafeArea(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: 130,
                  lineWidth: 30.5,
                  backgroundColor: Colors.deepPurple.shade300,
                  percent: myNumberRadiuse,
                  progressColor: Colors.deepPurple.shade800,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    //The Variable comes here!!
                    percentageNumberText.toString() + '%',
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: Colors.deepPurple.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 0, bottom: 0),
                child: TextField(
                  controller: userInputt,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  maxLength: 2,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    counterText: "",
                  ),
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Buttons
                      Container(
                        width: 100,
                        height: 85,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        //Logiccccccc
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              myNumberRadiuse = 0.25;
                              percentageNumberText = 25;
                            });
                          },
                          child: const Center(
                            child: Text(
                              '25',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
//Second Button
                      Container(
                        width: 100,
                        height: 85,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        //Logiccccccc
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              myNumberRadiuse = 0.5;
                              percentageNumberText = 50;
                            });
                          },
                          child: const Center(
                            child: Text(
                              '50',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  //3. BUtoonnn
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        height: 85,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        //Logiccccccc
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              myNumberRadiuse = 0.75;
                              percentageNumberText = 75;
                            });
                          },
                          child: const Center(
                            child: Text(
                              '75',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //4. BUtoonnn
                      Container(
                        width: 100,
                        height: 85,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        //Logiccccccc
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              myNumberRadiuse = 1;
                              percentageNumberText = 100;
                            });
                          },
                          child: const Center(
                            child: Text(
                              '100',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //5. Buttonnnn
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 240,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade300,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        //Logiccccccc
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              //myNumberRadiuse = 0.75;
                              //percentageNumberText = 78;
                              //int myStr = ;
                              //myNumberRadiuse = double.parse(userInputt.text);
                              percentageNumberText = int.parse(userInputt.text);
                              int myint = int.parse(userInputt.text);
                              myNumberRadiuse = myint/100.toDouble();
                            });
                          },
                          child: const Center(
                            child: Text(
                              'OK',
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
