import 'package:clase5/clase5.dart' as clase5;
import 'nuevasClases.dart'; //! esto llama a los archivos de una misma carpeta para ser usados en este mismo archivo

/*
void main(List<String> arguments) {
  print('Hello world: ${clase5.calculate()}!');

  nuevaClase newObjeto = nuevaClase(); // al crear un nuevo objeto con una clase se usa la sintaxis: nom_clas nom_objeto = nom_clase()


  newObjeto.nacer(); // en la clase se pueden hacer funciones y se le pueden ejecutar a los objeto que tengan esa clase
  newObjeto.dormir();

}


// CLASES 
class nuevaClase { // se puede crar clases en archivos apartes y por fuera del 'main'
  
  void nacer() => print('estoy vivo');
  void dormir() => print('zzzzz');
}
*/ //! en este fragmento de codigo se muestra la funcion basica de una Clase si se usa y se declara desde el mismo archivo 


void main(List<String> arguments) {

  // INSTACIACION / INSTANCIAR
  // asignar objetos a variables que emos creado

  nuevaClase newObjeto = nuevaClase(); // al crear un nuevo objeto con una clase se usa la sintaxis: nom_clas nom_objeto = nom_clase()


  newObjeto.nacer(); // en la clase se pueden hacer funciones y se le pueden ejecutar a los objeto que tengan esa clase
  newObjeto.dormir();

  // print('el nombre del niño es ${newObjeto.nom}'); // --> al ser imprimido de esta forma el nombre solo queda en los atributos de la clase

  var nomBoy = newObjeto.nom; // al ser guardados en otra variable ya habria una copia del valor de la variable "nom"
  print('el nombre del niño es $nomBoy');

  for(var i in newObjeto.abilidades){
    print('$nomBoy tiene la habilidad de $i');
  }


  // CONSTRUCTORES
  // inicializar todos los atributos a diferentes objetos

  nuevaClase2 boy2 = nuevaClase2('samuel', 16); // se ingresan los datos de inicio para los atrivutos del objeto

  nuevaClase2 boy3 = nuevaClase2.cuandoSeTieneLugar('sara', 16, lugar: 'casa'); // el parametro que es opcional debe de se especificado el nombre del atributo


}


//! NOTA: las clases tambien se peuden declarar en un archivo distinto siempre que este en la carpeta "lib", esto para tener un codigo mas limpio y ordenado
/*
class nuevaClase { // se puede crar clases en archivos apartes y por fuera del 'main'
  
  void nacer() => print('estoy vivo');
  void dormir() => print('zzzzz');
}*/ //! este fragmento que declara la clase se presentara en un archivo distinto

//! se importa e archivo en el que se encuentran declaradas las clases


