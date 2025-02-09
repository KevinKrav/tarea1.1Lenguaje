class Empleado {
  // Atributos / propiedades
  final String nombre;
  final String puesto;
  final double salario;
  
  // Constructor con argumentos nombrados
  Empleado({
    required this.nombre,
    required this.puesto,
    required this.salario,
  });
}
// Función para calcular el salario total
double calcularSalarioTotal(List<Empleado> empleados) {
  return empleados.fold(0, (total, empleado) => total + empleado.salario);
}

// Función para calcular el salario promedio
double calcularSalarioPromedio(List<Empleado> empleados) {
  if (empleados.isEmpty) return 0;
  return calcularSalarioTotal(empleados) / empleados.length;
}