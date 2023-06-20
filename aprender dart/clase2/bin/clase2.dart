
// el tipo de dato 'enum' se usa para los estados de un usuario (registrado, logueado,...)

enum EstadoUsuario{
  notlogged, logged, logging, registering
}

void main(List<String> args) {

  var estadoActual = EstadoUsuario.notlogged; // asi se podir a inicializar el programa e indicara que el usuario aun no a ingresado
  print(estadoActual);
  // aqui pasa algo y se loggea
  estadoActual = EstadoUsuario.logged;


  // LISTAS

  var lista1 = [10,14];
  var lista_anidada = [
    ['lista', 'sub 1'],
    ['lista', 'sub 2']
  ];

  var edad = lista1[0]; // asigna el mismo valor de la posicion de la lista
  var subList = lista_anidada[1][1];
  print(subList);

  // LISTA CON NUMERO FIJO DE OBJETOS

  var listaFija = List.filled(4, '', growable: false); // List.filled(length, relleno)
  // listaFija.add('hola); // genera error ya que no se le pueden agregar mas elementos

  print(lista1.last); // imprime la ultima posicion
  lista1.reversed; // revierte las posiciones



  // MAPAS (BIBLIOTECAS)

  var miMapa = {
    'name' : 'luis',
    'edad' : 26,
    'tipo' : true
  };
  miMapa ['new_key'] = 'valor'; // agregar nuevos elementos
  miMapa ['name'] = 'sara'; // si se usa una llave que ya esta definida lo que se hara es cambiar el valor

  print(miMapa);

  var lista = ['hola','me','llamo','ramiro'];
  var lista_a_mapa = lista.asMap(); // convierte una lista a mapa usando los indices como llave para su valor

  print(lista_a_mapa);

  // SET --> muy parecido a las listas pero se declara un tipo de variable fijo
  var miSet = <String> {'luis','lucia','samuel'};
  
  // CONVERCION DE VARIABLES

  String num_string = '123';

  int new_num = int.parse(num_string); // se ha convertido en un int

  String devuelta_string = new_num.toString(); // convierte el valor a String
  
  double n_decimal = 3.1416;
  String nDecimal = n_decimal.toStringAsFixed(2); // convierte a string y limita la cantidad de decimales

  
  // ASIGNACION DE VALORES

  int a = 1;
  int b = 2;
  var c;

  c ??= a; // este operador revisa si el valor de "c" es "null" y si lo es le asignara el valor de "a"
  print(c); // SI "C" ES NULL LE ASIGNA A

  // el operador '!' niega las variables o comparaciones
  // es tal o tal --> ||
  // es tal y tal --> &&

  if (a != 0) {
    print('corra');
    a = 0;
  } 
  if (a == 0) {
    print('corra');
    a = 0;
  } 


  // OPERADORES TRERNARIOS ---------------------------------------------------------------

  // condicion ? expresion_1 : expresion_2
  // da a entender que si se cumple la ocndicion se ejecutara la expresion_1, de lo contrario s eejecutara la expresion_2

  var soySam = true;
  soySam ? print('si soy') : print('no soy :('); // salida = 'si soy

  10 > 22 ? print('extrañamente 10 es mayor a 22') : print('10 nunca sera mayor a 22');

  // expresion_1 ??  expresion_2
  // si la expresion_1 es nula se ejecutara la expresion_2
  var oper_tern = [1,null,2];
  
  oper_tern[1] ?? print('no tiene valor esa porsicion'); // sirve para comprobar si una variable esta en null


  // ASSERT -> sentencia
  // se usa para identificar errores ya que se va cambiendo su posicion a lo largo del codigo

  print('inicio');
  //assert(/*valor */); // si el valor es false se detendra la ejecucion, si es true el programa seguira ejecutandose
  assert(true, 'fallo en la linea 113'); // para el correcto funcionamiento se debe activar los asserts
  // se activa desde la consola con el comando "dart --enable--asserts nom_archivo" debemos de estar hubicados en la carpeta en la que se encuentra el archivo, se debe ejecutar con este comando desde consola cada vez que se quiera revisar un fallo
  print('fin programa');
  

  // CILOS ---------------------------------------------------------------------------------------------------------------- 
  var gastos = [1,2,3,4,5];
  c=0; // contador -------- ya lo defini para otra cosa mas arriba
  for (var gasto in gastos){
    c++;
  }
  print('este mes ha tenido $c gastos'); // se puede usar el signo de dolar para concatenar dentro del texto son cerrar las comillas




}
