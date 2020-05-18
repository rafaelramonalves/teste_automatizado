/*

    A ideia é criar um método para calcular desconto, e fazer alguns testes.
    A função retorna o valor com desconto aplicado, e tem como entrada um valor
    inicial, o valor do desconto, e um booleano informando se o valor do desconto
    é em porcentagem, ou em reais.

*/

double calcularDesconto(
      double valorInicial, double desconto, bool ehPorcentagem) {
    if (desconto <= 0)
      throw new ArgumentError("O desconto deve ser maior que zero!");

    if (valorInicial <= 0)
      throw new ArgumentError("O valor inicial deve ser maior que zero!");

    if (ehPorcentagem) {
      return valorInicial - (valorInicial * desconto / 100);
    }

    return valorInicial - desconto;
  }

  /*

  É bem simples, os valores de desconto e inicial devem ser maiores que zero,
  se for porcentagem, calculamos o valor da e subtraímos do inicial,
  se não apenas subtraímos o valor inicial do desconto.

   */
