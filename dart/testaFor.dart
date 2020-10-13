void main() {  

  for(int i = 1; i <= 10; i++){
    print("Tabuada de $i");

    for(int j = 1; j <= 10; j++){
     print("$i * $j = ${i * j}");
    }
  }  

  // Fatorial
  int soma = 0;
  int fatorial = 1;

  for (int i = 1; i <= 15; i++) {
    //print(fatorial);
    fatorial *= i;
    soma += fatorial;
  }

  print("O resultado das somas de todos os fatoriais entre 1 e 15 é $soma"); 

  // Break
  int contador = 0;
  for (; ; ) {    
    contador++;
    if(contador == 123){
      print("Atingi o valor 123");
      break;
    }
  }
  print("Finalizando o programa com o valor do contador: $contador");

}