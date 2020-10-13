void main() {
  int idade = 17;
  bool maior_idade = idade >= 18;
  bool acompanhado = true;

  if(maior_idade){
   print("Você é maior de idade, pode entrar."); 
  }
  else{ 
    if (acompanhado) {
      print("Você é menor de idade, mas está acopmanhado, pode entrar.");
    }
    else{
      print("Você é menor de idade, não pode entrar.");
    }  
  }

}