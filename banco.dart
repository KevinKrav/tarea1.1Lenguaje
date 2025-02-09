class CuentaBancaria {
  final String titular;
  double saldo;

  CuentaBancaria({required this.titular, this.saldo = 0.0});

  void depositar(double cantidad) {
    if (cantidad > 0) {
      saldo += cantidad;
      print("Depósito exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}");
    } else {
      print("La cantidad a depositar debe ser mayor a cero.");
    }
  }

  void retirar(double cantidad) {
    if (cantidad > 0 && cantidad <= saldo) {
      saldo -= cantidad;
      print("Retiro exitoso. Nuevo saldo: \$${saldo.toStringAsFixed(2)}");
    } else {
      print("Fondos insuficientes o cantidad inválida.");
    }
  }

  void consultarSaldo() {
    print("Saldo actual: \$${saldo.toStringAsFixed(2)}");
  }
}







