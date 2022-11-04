import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/buttons.dart';
import 'package:flutter_application_1/widgets/results_labels.dart';

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
        title: const Text('Calculadora - v.0.2'),
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 1, 81, 117),
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10), //left, up, rigth, down
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container()),
              /*SE NECESITA CORREGIR ERRO YA QUE AL USAR ESTA CLASE OCURRE UN ERROR*/
              //ResultsLabels(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: 'AC',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => print('AC'),
                  ),
                  Button(
                    //Icon(Icons.disabled_by_default_rounded),
                    text: 'del',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => print('del'),
                  ),
                  Button(
                    text: '%',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => print('%'),
                  ),
                  Button(
                    text: '÷', //ALT+246
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => print('÷'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: '7',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('7'),
                  ),
                  Button(
                    text: '8',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('8'),
                  ),
                  Button(
                    text: '9',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('9'),
                  ),
                  Button(
                    text: 'x',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => print('x'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: '4',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('4'),
                  ),
                  Button(
                    text: '5',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('5'),
                  ),
                  Button(
                    text: '6',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('6'),
                  ),
                  Button(
                    text: '-',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => print('-'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: '1',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('1'),
                  ),
                  Button(
                    text: '2',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('2'),
                  ),
                  Button(
                    text: '3',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('3'),
                  ),
                  Button(
                    text: '+',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => print('+'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                    text: '0',
                    big: true,
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('0'),
                  ),
                  Button(
                    text: '.',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => print('.'),
                  ),
                  Button(
                    text: '=',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => print('='),
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
