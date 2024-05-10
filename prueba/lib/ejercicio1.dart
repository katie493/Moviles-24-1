abstract class Operacion {
  double suma(double a, double b);
  double resta(double a, double b);
  double multiplicacion(double a, double b);
}

class OperacionImplementacion extends Operacion {

  double suma(double a, double b) {
    return a + b;
  }

  double resta(double a, double b) {
    return a - b;
  }

  double multiplicacion(double a, double b) {
    return a * b;
  }
}

void main() {
  OperacionImplementacion operacion = OperacionImplementacion();

  double resultadoSuma = operacion.suma(3, 5);
  double resultadoResta = operacion.resta(1, 9);
  double resultadoMultiplicacion = operacion.multiplicacion(5, 8);

  print("Katherine Esmeralda Aguirre Cruz");
  print("Resultado de la suma: $resultadoSuma");
  print("Resultado de la resta: $resultadoResta");
  print("Resultado de la multiplicación: $resultadoMultiplicacion");
}
