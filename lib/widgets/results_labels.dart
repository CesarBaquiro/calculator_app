import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/operation.dart';
import 'package:flutter_application_1/widgets/main_result.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/calculator/calculator_bloc.dart';
import 'line.dart';

class ResultsLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Scaffold(
          body: BlocBuilder<CalculatorBloc, CalculatorState>(
            builder: (context, state) {
              return Column(children: [
                ResultText(text: state.firstNumber),
                ResultText(text: 'x'),
                ResultText(text: '91'),
                LineSeparator(),
                MainResultText(text: '0'),
                LineSeparator(),
              ]);
            },
          ),
        );
      },
    );
  }
}
