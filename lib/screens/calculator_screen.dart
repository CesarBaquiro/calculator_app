import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttons.dart';

class calculator_screen extends StatefulWidget {
  const calculator_screen({super.key});

  @override
  State<calculator_screen> createState() => _calculator_screenState();
}

class _calculator_screenState extends State<calculator_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columnas, filas y su funcionamiento - v.0.1'),
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 28, 38, 43),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: 'AC',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => print('AC'),
                  ),
                  CalculatorButton(
                    text: 'Delt',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => print('DELETE'),
                  ),
                  CalculatorButton(
                    text: '%',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => print('%'),
                  ),
                  CalculatorButton(
                    text: '÷', //ALT+246
                    bgColor: Color.fromARGB(255, 216, 189, 66),
                    onPressed: () => print('÷'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '7',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('7'),
                  ),
                  CalculatorButton(
                    text: '8',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('Boton 8'),
                  ),
                  CalculatorButton(
                    text: '9',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('Boton 9'),
                  ),
                  CalculatorButton(
                    text: 'X',
                    bgColor: Color.fromARGB(255, 216, 189, 66),
                    onPressed: () => print('Boton X'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    text: '1',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('1'),
                  ),
                  CalculatorButton(
                    text: '2',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('2'),
                  ),
                  CalculatorButton(
                    text: '3',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('3'),
                  ),
                  CalculatorButton(
                    text: '-',
                    bgColor: Color.fromARGB(255, 216, 189, 66),
                    onPressed: () => print('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalculatorButton(
                    text: '0',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('0'),
                  ),
                  CalculatorButton(
                    text: ',',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print(','),
                  ),
                  CalculatorButton(
                    text: '=',
                    bgColor: Color.fromARGB(255, 216, 189, 66),
                    onPressed: () => print('Boton ='),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
