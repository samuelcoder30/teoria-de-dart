import 'package:clase6/clase6.dart' as clase6;
import 'clases.dart';

void main(List<String> arguments) {

  //! continuacion de teoria de clases

  // GETTERS - SETTERS
  // usados para asignar de forma CORRECTA los valores de parametros de alguna clase. al ser un acceso directo simplemente ingresar y cambiar el valor le da mucha inseguridad al proyecto, por eso se usan los getters y setter. getters son para obtener informacion de un campo y guardarlo e alguna otra variable y los setters para asignar valores a algun parametro


  galleta maiz = galleta('sara', 16);

  // para cambiar el valor de alguno de lo sdatos ya declarados se hace de la siguiente forma:  variable.setter_crado = nuevo_valor
  maiz.setEdad = 25;

}
