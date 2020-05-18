import 'package:test/test.dart';
import 'package:testeautomatizo/descontos.dart';

void main(){
/*

  Todos os testes executam dentro de uma função test.
  Ela recebe dois parâmetros, primeiro vem a descrição do teste,
  e logo após vem uma função onde será executada todas as validações.

*/


/*

  Nesse caso estou validando o cálculo de desconto quando os valores
  são em dinheiro(R$ nesse caso). Basicamente se eu passar um valor
  sem desconto de R$ 150 um desconto de R$ 25, a função deveria retornar
  o valor de R$ 125. É simples, agora precisamos passar isso para o código.

 */
  const valorSemDesconto = 150.0;

  test('Deve calular descontos corretamente utilizando valores decimais', (){
    const desconto = 25.0;
    const valorComDesconto = valorSemDesconto - desconto;
    expect(calcularDesconto(valorSemDesconto, desconto, false), valorComDesconto);
  });

//Defini três constantes, que são os valores para o nosso cálculo, e logo após
// chamei uma função nova para nós, a expect. A função recebe dois parâmetros,
// o primeiro é o resultado que seu algoritmo retornou, e o segundo é o valor
// que ele deveria retornar. Criei uma constante valorComDesconto, que
// calculei na mão, e para esse teste passar, o resultado da nossa função
// deve estar igual à constante valorComDesconto.

  test('Deve calcular desconto corretamente utilizando porcentagem', () {
    var desconto = 10.0;
    var valorComDesconto = 135.0;
    expect(
        calcularDesconto(valorSemDesconto, desconto, true), valorComDesconto);
  });

  test('Deve dar erro ao calcula valor com desconto negativo ou zero', () {
    expect(() => calcularDesconto(valorSemDesconto, -1, true),
        throwsA(TypeMatcher<ArgumentError>()));

    expect(() => calcularDesconto(valorSemDesconto, 0, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve dar erro ao calcula valor com valor inicial zero', () {
    expect(() => calcularDesconto(0, 15, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Deve dar erro ao calcula valor com valor inicial negativo', () {
    expect(() => calcularDesconto(-1, 15, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });
}
