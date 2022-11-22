import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

//Funcionalidad del boton ResetAC
class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<ResetAC>((ResetAC event, emit) {
      emit(CalculatorState(
        firstNumber: '0',
        operation: '+',
        sencondNumber: '0',
        mathResult: "0",
      ));
    });

//Funcionalidad de los botones de numeros

    on<AddNumber>((AddNumber event, emit) {
      final result = state.mathResult == '0'
          ? event.number
          : state.mathResult + event.number;
      emit(state.copyWith(mathResult: result));
    });

    //Funcionalidad para borrar ultimo numero

    on<DeleteLastEntry>((DeleteLastEntry event, emit) {
      final result = state.mathResult.length > 1
          ? state.mathResult.substring(0, state.mathResult.length - 1)
          : '0';
      emit(state.copyWith(mathResult: result));
    });

    //Agregar argumento para la operacion

    on<OperationEntry>((OperationEntry event, emit) {
      emit(state.copyWith(
        firstNumber: state.mathResult,
        mathResult: '0',
        operation: event.operation,
        sencondNumber: '0',
      ));
    });

    on<CalculateResult>((CalculateResult event, emit) {
      final double num1 = double.parse(state.firstNumber);
      final double num2 = double.parse(state.mathResult);

      switch (state.operation) {
        case '+':
          emit(state.copyWith(
            sencondNumber: state.mathResult,
            mathResult: '${num1 + num2}',
          ));
          break;

        case '-':
          emit(state.copyWith(
            sencondNumber: state.mathResult,
            mathResult: '${num1 - num2}',
          ));
          break;

        case '/':
          emit(state.copyWith(
            sencondNumber: state.mathResult,
            mathResult: '${num1 / num2}',
          ));
          break;

        case 'x':
          emit(state.copyWith(
            sencondNumber: state.mathResult,
            mathResult: '${num1 * num2}',
          ));
          break;

        case '%':
          emit(state.copyWith(
            sencondNumber: state.mathResult,
            mathResult: '${num1 * num2 / 100}',
          ));
          break;

        default:
          emit(state);
      }

      emit(state.copyWith());
    });
  }
}
