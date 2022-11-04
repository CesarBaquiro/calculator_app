part of 'calculator_bloc.dart';
/*En los eventos vamos a poner todas esas acciones que neustra calculadora va a esperar, osea que si tocamos un numero se crea un nuevo evento*/

@immutable
abstract class CalculatorEvent {}

class ResetAC extends CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;

  AddNumber(this.number);
}
