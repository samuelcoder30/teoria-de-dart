void main(List<String> arguments) {
  hola();
  int edad = dameEdad(); // se guarda el valor retornado en la variable edad
  // solo se puede asignar a una variable del mismo tipo (int/int String/String)
  // se puede usar el mismo nombre de variable ya que son funciones independientes
  print(edad);

  // al retornar un valor es por eso que se llama a la funcion para darle el valor a una variable, para que el valor devuelto se guarde en una variable y usarla posteriormente
  // tambien se puede llamar una funcion desde un print directamente en el momento de impresion ahorrandonos la linea en la que guardamos el valor en una variable 

  print("hola " + mensaje()); // para imprimir algo retornado se tiene que usar print()
  // print("hola ${name()}");es igual que el de arriba pero se salta la concatenacion

  var mensaje_eject = mensaje2('samuel'); // se separa la ejecucion de la impresion por una "queja" de dart
  print(mensaje_eject);
  
  mensaje3('samuel', 12);
  mensaje4('sara', null, 2006); // se le pone un null debido a que no conosemos la edad del numbre
}

// misma declaracion que en c++
void hola(){ // el void se usa cuando la funcion no retorna nada
  print("hola");
}

// funcion con un retorno numerico
int dameEdad(){
  int edad = 0;
  return edad;
}

// funcion con un retorno de cadena de texto
String mensaje(){
  return 'mi nombre es samuel ';
}



// FUNCIONES CON PARAMETROS

String mensaje2(String u_name){
  String resultado = 'mi nombre es ' + u_name.toUpperCase(); // toUpperCase es para convertir las letras en mayuscula
  return resultado;
}

//  FUNCIONES CON PARAMETROS OPCIONALES
void mensaje3(String u_name, [var edad]){ // al poner un aparametro dentro de corchetes damos la señal de que ese parametro no es totalmente necesario y puede ser dajado de lado.

  if (edad == null){
    print('la persona $u_name tiene edad desconocida');
  } else {
    print('la edad de la persona $u_name es de $edad');
  }
}
//-----------------------------------------------------------------------------------------------------

//  FUNCIONES CON PARAMETROS OPCIONALES
void mensaje4(String u_name, [var edad, var year]){ // al ser parametros opcionales el orden en el que se ingresen importan mucho. Si unicamente se ingresa un numero despues del numbre se tomara directamente como la edad, si se ingresan 2 numeros el primero sera la edad y el segundo sera el año. En dado caso de que solo se teng ael año se debera ocupar el espacio de la edad con un null quedando el llamado de la funcion de la suguiente manera: mensaje4(nombre, null, 1894)
//                                               ^^^^ --> ocupa el espacio de la edad

  if (edad == null && year == null){
    print('la persona $u_name tiene edad y año de nacimiento desconocidos');
  } else if (year == null) {
    print('la edad de la persona $u_name es de $edad y se desconose su año de nacimiento');
  } else {
    print('la edad de la persona $u_name es de $edad y es nacido del año $year');
  }
}
