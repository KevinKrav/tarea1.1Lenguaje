import 'empleado.dart';
import 'biblioteca.dart';
import 'banco.dart';
void main() {
  //ejercicio #1
  List<int> fibonacci = [];
  
  // Inicializamos los dos primeros números de la sucesión
   int a = 0;
   int b = 1;

  fibonacci.add(a);
  fibonacci.add(b);

  for (int i = 2; i < 15; i++) {
    int c = a + b;
    fibonacci.add(c);
    a = b;
    b = c;
  }
  print(fibonacci);

  //ejercicio #2
  List<int> uniqueFibonacci = fibonacci.toSet().toList();
  print(uniqueFibonacci);

  //ejercicio #3
  List<Empleado> empleados = [
    Empleado(nombre: "Juan", puesto: "Desarrollador", salario: 3000.0),
    Empleado(nombre: "María", puesto: "Diseñadora", salario: 2800.0),
    Empleado(nombre: "Carlos", puesto: "Gerente", salario: 5000.0),
  ];

  print(calcularSalarioTotal(empleados));
  print(calcularSalarioPromedio(empleados));

   //ejercicio #4
  Biblioteca biblioteca = Biblioteca();
  biblioteca.agregarLibro(Libro(titulo: "El principito", autor: "Antoine de Saint-Exupéry", anioPublicacion: 1943));
  biblioteca.agregarLibro(Libro(titulo: "Don Quijote de la Mancha", autor: "Miguel de Cervantes", anioPublicacion: 1605));  
  biblioteca.agregarLibro(Libro(titulo: "Cien años de soledad", autor: "Gabriel García Márquez", anioPublicacion: 1967));
 
 print(biblioteca.buscarPorAutor("Gabriel García Márquez"));
 biblioteca.eliminarLibro("Cien años de soledad");
 print("\nDespués de eliminar 'Cien años de soledad':");
  for (var libro in biblioteca.listarLibrosOrdenadosPorAnio()) {
    print(libro);
  }

  CuentaBancaria cuenta = CuentaBancaria(titular: "Juan Pérez", saldo: 100.0);
  print("\nCuenta Bancaria de ${cuenta.titular}");
  cuenta.consultarSaldo();

  print("\nDepositando 50.0...");
  cuenta.depositar(50.0);
  cuenta.consultarSaldo();
  
  print("\nIntentando retirar 30.0...");
  cuenta.retirar(30.0);
  cuenta.consultarSaldo();
  
  print("\nIntentando retirar 200.0...");
  cuenta.retirar(200.0);
  cuenta.consultarSaldo();

}