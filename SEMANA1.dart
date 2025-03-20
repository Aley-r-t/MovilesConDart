//Codigo de la semana1 
void main() {
  //Ejemplo de lista de numeros
  List<int> numeros = [1,2,3,4,5,6,7,8,9,10];
  List<String> colores = ['rojo','Verde','Azul'];
  
  //Accediendo a elementos de la lista
  print(numeros[1]);
  print(colores[0]);
  
  int mayor = numeros[0];
  for (int numero in numeros) {
    if (numero > mayor) {
        mayor = numero;
    }
  }
  print(mayor);
  
  int menor = numeros[0];
  for (int numero in numeros) {
    if (numero > numero) {
        numero = numero;
    }
  }
  print(menor);
  
  int suma = 0;
  for (int numero in numeros) {
    suma += numero;
  }
   
  double promedio = 0.0; 
  promedio = suma / numeros.length;
  print(promedio);
}
