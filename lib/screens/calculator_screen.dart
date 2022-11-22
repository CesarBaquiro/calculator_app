import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_application_1/widgets/buttons.dart';
import 'package:flutter_application_1/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_application_1/widgets/results_labels.dart';

class calculator_screen extends StatefulWidget {
  const calculator_screen({super.key});

  @override
  State<calculator_screen> createState() => _calculator_screenState();
}

class _calculator_screenState extends State<calculator_screen> {
  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora - v.1.0'),
      ),
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 1, 81, 117),
          padding: EdgeInsets.fromLTRB(40, 10, 40, 10), //left, up, rigth, down
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(),
              ),
              const ResultsLabels(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: 'AC',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => calculatorBloc.add(ResetAC()),

                    // BlocProvider.of<CalculatorBloc>(context).add(ResetAC()),
                  ),
                  Button(
                    //Icon(Icons.disabled_by_default_rounded),
                    text: 'del',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => calculatorBloc.add(DeleteLastEntry()),
                  ),
                  Button(
                    text: '%',
                    bgColor: Color.fromARGB(255, 31, 92, 77),
                    onPressed: () => calculatorBloc.add(OperationEntry('%')),
                  ),
                  Button(
                    text: '/',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => calculatorBloc.add(OperationEntry('/')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: '7',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('7')),
                  ),
                  Button(
                    text: '8',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('8')),
                  ),
                  Button(
                    text: '9',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('9')),
                  ),
                  Button(
                    text: 'x',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => calculatorBloc.add(OperationEntry('x')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: '4',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('4')),
                  ),
                  Button(
                    text: '5',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('5')),
                  ),
                  Button(
                    text: '6',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('6')),
                  ),
                  Button(
                    text: '-',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => calculatorBloc.add(OperationEntry('-')),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    text: '1',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('1')),
                  ),
                  Button(
                    text: '2',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('2')),
                  ),
                  Button(
                    text: '3',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('3')),
                  ),
                  Button(
                    text: '+',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => calculatorBloc.add(OperationEntry('+')),
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
                    onPressed: () => calculatorBloc.add(AddNumber('0')),
                  ),
                  Button(
                    text: '.',
                    bgColor: Color.fromARGB(255, 31, 55, 92),
                    onPressed: () => calculatorBloc.add(AddNumber('.')),
                  ),
                  Button(
                    text: '=',
                    bgColor: Color.fromARGB(255, 226, 185, 3),
                    onPressed: () => calculatorBloc.add(CalculateResult()),
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
