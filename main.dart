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

}