void main() {
  int idade = 13;
  bool acompanhado = false;

  if(idade >= 16 || idade >= 10 && acompanhado){
    print("Você pode entrar!");
  }
  else{
      print("Você não pode entrar");    
  }

  //Número maior
  int num1 = 18;
  int num2 = 65;
  int num3 = 45;
  int maior;

    if( num1 > num2 && num1 > num3 ) { maior = num1; }
    if( num2 > num1 && num2 > num3 ) { maior = num2; }
    if( num3 > num2 && num3 > num1 ) { maior = num3; }

    print("O maior número é o de valor $maior");


}