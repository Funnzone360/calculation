import 'package:calculatornodependency/mywidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String input = "";
  String operator = "";
  double firstOperand = 0;
  double secondOperand = 0;
  double result = 0;

  void onNumberPressed(String digit) {
    setState(() {
      input = input + digit;
    });
  }

  void onOperatorPressed(String op) {
    setState(() {
      firstOperand = double.parse(input);
      if (input.isNotEmpty && operator.isEmpty) {
        operator = op;
        input = "";
      }
    });
  }

  void onClearPressed() {
    setState(() {
      input = "";
      operator = "";
      firstOperand = 0;
      secondOperand = 0;
      result = 0;
    });
  }

  void onEqualpressed() {
    setState(() {
      if (input.isNotEmpty) {
        secondOperand = double.parse(input);

        switch (operator) {
          case "+":
            result = firstOperand + secondOperand;
            break;
          case "-":
            result = firstOperand - secondOperand;
            break;
          case "*":
            result = firstOperand * secondOperand;
            break;
          case "/":
            if (secondOperand != 0) {
              result = firstOperand / secondOperand;
            } else {
              result = double.nan;
            }
            break;
          default:
        }
        input = result.toString();
        operator = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.5),
        title: Text("Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white38,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "$input",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "$result",
                      style: TextStyle(fontSize: 26),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Mybutton(
                        title: "Ac",
                        containercolor: Colors.yellow,
                        onbtnpress: () {
                          setState(() {
                            onClearPressed();
                          });
                        },
                      ),
                      Mybutton(
                        title: "+/-",
                        containercolor: Colors.red,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("+/-");
                          });
                        },
                      ),
                      Mybutton(
                        title: "%",
                        containercolor: Colors.red,
                        onbtnpress: () {
                          setState(() {
                            onOperatorPressed("%");
                          });
                        },
                      ),
                      Mybutton(
                        title: "/",
                        containercolor: Colors.purple,
                        onbtnpress: () {
                          setState(() {
                            onOperatorPressed("/");
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Mybutton(
                        title: "7",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("7");
                          });
                        },
                      ),
                      Mybutton(
                        title: "8",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("8");
                          });
                        },
                      ),
                      Mybutton(
                        title: "9",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("9");
                          });
                        },
                      ),
                      Mybutton(
                        title: "*",
                        containercolor: Colors.purple,
                        onbtnpress: () {
                          setState(() {
                            onOperatorPressed("*");
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Mybutton(
                        title: "4",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("4");
                          });
                        },
                      ),
                      Mybutton(
                        title: "5",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("5");
                          });
                        },
                      ),
                      Mybutton(
                        title: "6",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("6");
                          });
                        },
                      ),
                      Mybutton(
                        title: "-",
                        containercolor: Colors.purple,
                        onbtnpress: () {
                          setState(() {
                            onOperatorPressed("-");
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Mybutton(
                        title: "1",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("1");
                          });
                        },
                      ),
                      Mybutton(
                        title: "2",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("2");
                          });
                        },
                      ),
                      Mybutton(
                        title: "3",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("3");
                          });
                        },
                      ),
                      Mybutton(
                        title: "+",
                        containercolor: Colors.purple,
                        onbtnpress: () {
                          setState(() {
                            onOperatorPressed("+");
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Mybutton(
                        title: "D",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            input = input.substring(0, input.length - 1);
                          });
                        },
                      ),
                      Mybutton(
                        title: "0",
                        containercolor: Colors.white,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed("0");
                          });
                        },
                      ),
                      Mybutton(
                        title: ".",
                        containercolor: Colors.yellow,
                        onbtnpress: () {
                          setState(() {
                            onNumberPressed(".");
                          });
                        },
                      ),
                      Mybutton(
                        title: "=",
                        containercolor: Colors.red,
                        onbtnpress: () {
                          onEqualpressed();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
