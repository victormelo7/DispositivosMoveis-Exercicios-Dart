class Conta{
  double chequeEspecial = 0;
  int numConta = 0;
  String titular = '';
  double saldo = 0;
  
 Conta(String titular, int conta){
    this.titular = titular;
    this.numConta = conta;
    this.chequeEspecial = 200;
    print("CONTA CRIADA COM SUCESSO.\n${getImprimirSaldo()}");
  }
  
  void setTitular(String titular){
    this.titular= titular;
  }
  
  void setConta(int conta){
    this.numConta = conta;
  }
  
  void setSaque(double saque){
    if (chequeEspecial <= 0){
      print("SALDO EM CONTA INSUFICIENTE!\nTENTE UM VALOR 

MENOR OU CONFIRA SEU SALDO.\n");
    }
    else if ((saldo - saque) >= 0){
      this.saldo-= saque;
      print("${getImprimirSaldo()}");
    }
    else if(((saldo - saque) <= 0) && ((chequeEspecial - 

(saldo - saque)) >= chequeEspecial )){
      this.chequeEspecial += (saldo - saque);
      this.saldo=0;
      print("${getImprimirSaldo()}");
    }
  }
  
  void setDeposito (double deposito){
    this.saldo += deposito;
  }
  
  String getImprimirSaldo(){
      return "SALDO ATUAL: R\$ $saldo\nVOCÊ TEM: R\$ 

$chequeEspecial EM CHEQUE ESPECIAL.\n";   
  } 
}

void main() {
  Conta conta1 = new Conta("João", 0010030);
  
  conta1.setSaque(30);
  
}
