part of 'calculator_bloc.dart';
/*En el  state vamos a ingresar la informacion la cual no queremos que cambie, si queremos hacer un cambio pues enviamos un evento que actualice el state*/

class CalculatorState {
  final String mathResult; //Las operaciones se ingresan como String
  final String firstNumber;
  final String sencondNumber;
  final String operation;

  CalculatorState({
    //Constructor
    this.mathResult = '16',
    this.firstNumber = '12',
    this.sencondNumber = '11',
    this.operation = '+',
  });
}
