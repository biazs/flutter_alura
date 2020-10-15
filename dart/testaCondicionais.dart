void main(){
  print("Testando condicionais");
  int idade = 17;

  /*
  if(idade >= 18){
    print("Você é maior de idade, pode entrar.");
  }
  else{
    print("Você é menor de idade, não pode entrar.");
  }
  */
  // Operação ternária
  idade >= 18 
  ? print("Você é maior de idade, pode entrar.") 
  : print("Você é menor de idade, não pode entrar.");

  int altura = 178;

  if(altura < 150){ print("Pequena"); }
  else if(altura >= 150 && altura <= 175){ print("Media"); }
  else if(altura >= 175 && altura <= 195){ print("Grande"); }
  else{  print("Gigante"); }

  

}