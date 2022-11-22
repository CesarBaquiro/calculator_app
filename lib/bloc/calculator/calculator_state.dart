part of 'calculator_bloc.dart';
/*En el  state vamos a ingresar la informacion la cual no queremos que cambie, si queremos hacer un cambio pues enviamos un evento que actualice el state*/

class CalculatorState {
  //Las operaciones se ingresan como String
  final String firstNumber;
  final String operation;
  final String sencondNumber;
  final String mathResult;

  CalculatorState({
    //Constructor
    this.firstNumber = '0',
    this.operation = '+',
    this.sencondNumber = '0',
    this.mathResult = '0',
  });

//El Copy with hace como una copia de las asignaciones anteriores
  CalculatorState copyWith({
    String? firstNumber,
    String? operation,
    String? sencondNumber,
    String? mathResult,
  }) =>
      //En caso de no haber una nueva asignacion pues se toma la que habia anteriormente
      CalculatorState(
        firstNumber: firstNumber ?? this.firstNumber,
        operation: operation ?? this.operation,
        sencondNumber: sencondNumber ?? this.sencondNumber,
        mathResult: mathResult ?? this.mathResult,
      );
}
