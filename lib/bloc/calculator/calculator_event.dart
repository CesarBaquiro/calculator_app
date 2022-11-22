part of 'calculator_bloc.dart';
/*En los eventos vamos a poner todas esas acciones que neustra calculadora va a esperar, osea que si tocamos un numero se crea un nuevo evento*/

@immutable
abstract class CalculatorEvent {}

//Aca vamos a enviar el evento al precionar AC
class ResetAC extends CalculatorEvent {}

// Aca vamos a anadir un numero
class AddNumber extends CalculatorEvent {
  final String number;

  AddNumber(this.number);
}

//Aca vamos a borrar el ultimo numero
class DeleteLastEntry extends CalculatorEvent {}

//Aca vamos a anadir el argumento para la operacion
class OperationEntry extends CalculatorEvent {
  final String operation;
  OperationEntry(this.operation);
}

//Aca vamos a calcular el resultado
class CalculateResult extends CalculatorEvent {}
