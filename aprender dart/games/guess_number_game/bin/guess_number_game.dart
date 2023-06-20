import 'dart:math';
import 'dart:io';

import 'package:test/test.dart';

void main(List<String> arguments) {
  var ma = 0, me = 0;

  print('A continuacion ingrese el rango para adivinar el numero (0 - ∞ ) \nnumero menor: ');
  me = stdin.readLineSync();
  errorNoNum(me);

  do {
    print('numero mayor: ');
    ma = stdin.readLineSync();
    errorNoNum(ma);

    if (me > ma) {
      print('ha ingresado un numero invalido, ingrese el numero MAYOR que $me.\n');
    } else if (me == ma) {
      print( 'ha ingresado un numero invalido, ingrese el numero MAYOR y DISTINTO a $me.\n');
    }
  } while (me >= ma);

  Random random = Random(); // se usa para definir como funcionara le rando y para decir como se declarará
  var num_aleatorio = random.nextInt(ma - me) + me; // regresa un numero desde cero hasta el numero que halla en al parentesis
  // para poder que se regrese un numero entre un minimo y el maximo se pone como maximo la diferencia del minimo y el maximo como el maximo de la funcion rendom y al numero devuelto se le suma el mnumero minimo dando como resultado un numero entre los numeros propuestos

  var num_intentos = 1; // contar cuanto sintentos necesito para adivinar el numero
  var num;

  do {
    print('intento $num_intentos \ningrese un numero: ');
    num = stdin.readLineSync();
    num_intentos++;
  } while (num != num_aleatorio);

  print('FELICIDADES. GANASTE UN BASO DE AGUA');
}

void errorNoNum(var num) { // revisa porsibles errores al ingresar mal un numero

  if (int.tryParse(num) == null) { // comprueba si el valor introducido puede ser pasado a ser un numero y si no lo es regresa 'null'
    print('no ha ingresado un numero.');
    exit(0);
  }
}
