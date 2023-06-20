import 'dart:math';

import 'package:clase4/clase4.dart' as clase4;

void main(List<String> arguments) {
  
  
  // FUNCIONES ANONIMAS
   var listNoms = ['sara', 'samuel', 'david', 'claudia', 'bernardo'];

  // en resumidas cuentas una funcion es ((parametro de ingreso){accion} se podria ingresar una funcion dentro de un fragmento de codigo pero esta no podra volver a ser llamada debido a que no se le ha declarado un numbre
   listNoms.forEach((element) {
     print('este es $element');
   });


  impresion();
  loveMensaje('Sara');
  var cadenaTexto = nombre('Sara');
  print(cadenaTexto);


  // EJECUCION EN CASCADA
  // cuando se va a ejecutar una misma funcion muchas veces se usa la ejecucion en cascada para evitar declarar la cariable a la que sera atribuida la funcion:
  var lista = [];

  lista // se llama la variable a la que sera atribuida la funcion
    ..add('peras') // se agregan 2 puntos cad que se le va a atribuir una funcion a la misma variable
    ..add('bananos') // no se finaliza con punto y coma (;) hasta que se valla a parar de atrubuir funciones a las variable
    ..add('manzanas');


  var listaNumeros = [1,2,3,4,5,6,7,8,9,10];
  
  var nueva = potencias(listaNumeros);
  print(nueva);

}



//  FUNCIONES CON SINTAXIS CORTA
// en algunos casos la informaciomn que va dentro de una funcion es muy poca y por lo tanto se usa una sintaxis qeu acorta y reduce las lineas innecesarias cuando el codigo es muy poco:
//     tip_fincion nom_funcion (parametros) => accion en una linea;

void impresion() => print('hola mundo'); // solo se puede dar una instruccion despues del simbolo "=>"

void loveMensaje(String nom) => print('te amo $nom');

String nombre(String nom) => 'el nombre es $nom'; // con este tipo de sintaxis reducida tambien se puede ahorrar escribir el "return"


List potencias(List listaNumeros){

  var newList = [];
  for(var numero in listaNumeros){
      newList.add(pow(numero, 2));
  }

  return newList;
}