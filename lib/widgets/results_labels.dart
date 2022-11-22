import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/operation.dart';
import 'package:flutter_application_1/widgets/main_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/calculator/calculator_bloc.dart';
import 'line.dart';

class ResultsLabels extends StatelessWidget {
  const ResultsLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        if (state.firstNumber == '0' && state.sencondNumber == '0') {
          return MainResultText(
              text: state.mathResult.endsWith('.0')
                  ? state.mathResult.substring(0, state.mathResult.length - 2)
                  : state.mathResult);
        }

        return Column(children: [
          ResultText(
              text: state.firstNumber.endsWith('.0')
                  ? state.firstNumber.substring(0, state.firstNumber.length - 2)
                  : state.firstNumber),
          ResultText(text: state.operation),
          ResultText(
              text: state.sencondNumber.endsWith('.0')
                  ? state.sencondNumber
                      .substring(0, state.sencondNumber.length - 2)
                  : state.sencondNumber),
          LineSeparator(),
          MainResultText(
              text: state.mathResult.endsWith('.0')
                  ? state.mathResult.substring(0, state.mathResult.length - 2)
                  : state.mathResult),
          LineSeparator(),
        ]);
      },
    );
  }
}
