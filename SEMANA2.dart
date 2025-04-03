class Persona {
  String? nombre;
  String? apellido;
  int? edad; 


  Persona({required this.nombre, required this.apellido});


  Persona.conEdad(this.edad);

  Persona.fromJson(Map<String, dynamic> json) { 
    nombre = json['nombre'];
    apellido = json['apellido'];
    edad = json['edad'];
  }

  @override
  String toString() {
    return 'Nombre: $nombre, Apellido: $apellido, Edad: $edad';
  }
}

String calcularEdadMayorMenor(Persona persona1, Persona persona2) {
  if (persona1.edad == null && persona2.edad == null) {
    return 'Ambas personas no tienen edad definida.';
  } else if (persona1.edad == null) {
    return '${persona2.nombre} es la persona con edad definida (${persona2.edad}).';
  } else if (persona2.edad == null) {
    return '${persona1.nombre} es la persona con edad definida (${persona1.edad}).';
  } else {
    if (persona1.edad! > persona2.edad!) {
      return '${persona1.nombre} es mayor que ${persona2.nombre}.';
    } else if (persona1.edad! < persona2.edad!) {
      return '${persona2.nombre} es mayor que ${persona1.nombre}.';
    } else {
      return 'Ambas personas tienen la misma edad.';
    }
  }
}

void main() {
  Persona persona1 = Persona(nombre: 'Juan', apellido: 'Pérez');
  persona1.edad = 30;
  Persona persona2 = Persona.conEdad(25);
  persona2.nombre = 'María';
  persona2.apellido = 'Gómez';
  print(persona1.toString());
  print(persona2.toString());
  print(calcularEdadMayorMenor(persona1, persona2));
}
