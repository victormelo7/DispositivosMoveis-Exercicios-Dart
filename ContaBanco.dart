//criação da classe Conta.
class Conta{
  //atributos da classe Conta.
  double chequeEspecial = 0;
  int numConta = 0;
  String titular = '';
  double saldo = 0;
  
  //contruto da classe com atribuição direta.
  Conta(String titular, int conta){
    this.titular = titular;
    this.numConta = conta;
    this.chequeEspecial = 200;
    print("CONTA CRIADA COM SUCESSO.\n${getImprimirSaldo()}");
  }
  
  //atribuindo nome ao Titular da conta
  void setTitular(String titular){
    this.titular= titular;
  }
  
  //atribuindo um nunero a conta
  void setConta(int conta){
    this.numConta = conta;
  }
  
  //saque de valor com verificação sobre o saldo e cheque especial
  void setSaque(double saque){
    if (chequeEspecial <= 0){
      print("SALDO EM CONTA INSUFICIENTE!\nTENTE UM VALOR MENOR OU CONFIRA SEU SALDO.\n");
    }
    else if ((saldo - saque) >= 0){
      this.saldo-= saque;
      print("${getImprimirSaldo()}");
    }
    else if(((saldo - saque) <= 0) && ((chequeEspecial - (saldo - saque)) >= chequeEspecial )){
      this.chequeEspecial += (saldo - saque);
      this.saldo=0;
      print("${getImprimirSaldo()}");
    }
  }
  
  //insere o vador de deposito direto ao saldo.
  void setDeposito (double deposito){
    this.saldo += deposito;
  }
  
  //mostra na tela o saldo atual e ovalor do cheque especial.
  String getImprimirSaldo(){
      return "SALDO ATUAL: R\$ $saldo\nVOCÊ TEM: R\$ $chequeEspecial EM CHEQUE ESPECIAL.\n";   
  } 
}

void main() {
  Conta conta1 = new Conta("João", 0010030);
  
  conta1.setSaque(30);
  
}
