class nuevaClase { // se puede crar clases en archivos apartes y por fuera del 'main'
  
  // ATRIBUTOS DE CLASE
  String nom = 'tom';
  int edad = 0;
  var abilidades = ['saltar', 'correr', 'dormir'];

  // FUNCIONES EN UNA CLASE 
  void nacer() => print('estoy vivo');
  void dormir() => print('zzzzz');
} //! dart no permite inicializar ciertas variables con valores nulos (null) por lo tanto en la mayoria delo casos hay que inicializarlos con valores predeterminados



//! en oposicion a lo anterior hay un metodo de nullSafety para poder inicializar las variables con valores de Null
class nuevaClase2 {
  
  String? nombre; // al agregar el signo de interrogacion (?) se convierte en la declaracion de una variable nullable (valor unterno Null)
  int? edad;
  String? lugar;

  /*nuevaClase2(String nombreEntrada, int edadEntrada){ // -> constructor
    // asignar lo que se esta pidiendo
    this.nombre = nombreEntrada;
    this.edad = edadEntrada;
  }*/ //? esta es la forma larga para hacer un constructor

  //? la forma corta del constructor se puede dar:
  nuevaClase2(this.nombre, this.edad); // sigue cumpliendo la misma funcion de constructor

  // se pueden crear todos los cosntructores que se deseen

  // tambien se pueden genrar constructores con parametros opcionales para dar mas informacion si es necesario. la sintaxis de este es:
  //  nom_clase.texto_extra(this.variable_input,..., {this.var_opcional, ...})
  nuevaClase2.cuandoSeTieneLugar(this.nombre, this.edad, {this.lugar});
}  