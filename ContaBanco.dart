class Conta{
  double chequeEspecial = 200.00;
  int numConta = 0;
  String titular = '';
  double saldo = 0;
  
  Conta(String titular, int conta){
    this.saldo+=chequeEspecial;
    
    print("Seu saldo inicial é de R\$ ${getImprimirSaldo()}");
  }
  
  void setTitular(String titular){
    this.titular= titular;
  }
  
  void setConta(int conta){
    this.numConta = conta;
  }
  
  void setSaque(double saque){
    if ((saldo - saque) < 0){
      print("SALDO EM CONTA INSUFICIENTE!\nTENTE UM VALOR MENOR OU CONFIRA SEU SALDO.\n");
    }
    else{
      this.saldo -= saque;
      print("SALDO ATUAL: R\$ ${getImprimirSaldo()}");
    }
  }
  
  void setDeposito (double deposito){
    this.saldo += deposito;
  }
  
  double getImprimirSaldo(){
    return this.saldo;
  }
  
  
}

void main() {
  Conta conta1 = new Conta("João", 0010030);
  
  conta1.setSaque(201);
  
}
