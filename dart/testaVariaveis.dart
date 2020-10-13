void main(){

  // Variáveis inteiras
  int idade = 25;
  int idade_irmao = idade + 5;
  int idade_avo = idade + idade_irmao + 10;
  /*
  print("Eu tenho $idade anos.");
  print("Meu irmão tem $idade_irmao anos.");
  print("Meu avô tem $idade_avo anos.");
  */

  // Variáveis reais
  double salario = 2499.90 * 2;
  //print("Meu salário é R\$ $salario");

  // Variáveis string
  int ano = 2013;
  String texto = "Curso Online de Tecnologia desde $ano";
  String texto1 = 'Curso Online de Tecnologia';
  ano = ano + 6;
  //print(texto);
  //print("$texto");

  // Variáveis dinâmicas
  var pi = 3.1415;
  String frase = "Eu tenho $idade anos e o valor de pi é $pi";
  print(frase);

  dynamic age = 25;
  age = 25.5;
  print("Eu tenho $age");

}