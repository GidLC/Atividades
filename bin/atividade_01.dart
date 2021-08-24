import 'package:atividade_01/atividade_01.dart' as atividade_01;
import 'dart:io';
/*
O código tem como objetivo calcular o aumento salarial de alguns funcionários
sendo que aqueles que ganham de 1100 a 2500 recebem 15% de aumento, aqueles que
ganham entre 2500 e 4000 recebem um aumento de 10% e os que ganham acima de
4000 o aumento é de 5%.
*/

void main(List<String> arguments) {
  var aumento;

  print('Digite seu nome:');
  var entradaNome = stdin.readLineSync();

  print('Digite seu salário:');
  var entradaSalario = stdin.readLineSync();
  var salario = double.parse(entradaSalario!);

  if (salario < 1100) {
    print('!!!!!Salário incompativel(menor que 1100)!!!!!');
  }

  if (salario >= 1100 && salario < 2500) {
    aumento = (salario * 0.15);
    salario = salario + aumento;
    print('Parabéns $entradaNome seu novo salário é de $salario reais');
  }

  if (salario >= 2500 && salario < 4000) {
    aumento = (salario * 0.10);
    salario = salario + aumento;
    print('Parabéns $entradaNome seu novo salário é de $salario reais');
  }

  if (salario >= 4000) {
    aumento = (salario * 0.05);
    salario = salario + aumento;
    print('Parabéns $entradaNome seu novo salário é de $salario reais');
  }
}
