void main(List<String> arguments) {

  // inicializar variables
  var a = "hola mundo"; // cirve para inicializar una variable sin necesidad de saber su contenido
  /*
  tambien se pueden usar las inicializaciones esactas como lo son:
  int
  String
  bool
  double -> decimal
  */

  final k = "invariable"; // al inicializar una variable con "final" ó "const" se esta diciendo que el valor de la variale no podra ser cambiado en todo el coigo


  // se pueden generar string multi linea con comillas triples ''' '''
  String multiLinea = 
  '''
Este es el inicio de un 
string multi linea
tengo novia''';
  print(multiLinea);

  // transformar el tipo de variable
  int cuatro = 4;
  String cuatroString = cuatro.toString();
  print(cuatroString);

  // determinar el numero de decimales a imprimir
  double num = 3.141516;
  print(num.toStringAsFixed(2)); // imprimira 2 decimales


  // dividir un string en 2 con "split"
  String email = "savalencia1030@gmail.com";
  print("el dominio de la direccion es: ${email.split("@")[1]}");  // .split("lugar_corte")[parte_a_imprimir] -> se toma como una "lista"


  // revisar objetos en un string
  var b = "hola mundo, aqui a venido hitler";
  print(b.contains(" a ")); // se podria usar para comprobar Emails

  // comprobar si el string inicia con algo en especifico
  print(b.startsWith("hol"));
  // preguntar la poscicion de un caracter
  print(b.indexOf("a")); // imprime la primera aparicion

  // extraer una parte de un texto
  print(email.substring(email.indexOf("@")+1, email.indexOf("."))); // .substring(start, end)

  do {
    print("object");
  } while (false); // si usi true se genera un bucle infinito



  /*
  for(var i = 0; i < 5; i++){
    print('Hello world! $i');
  }*/ 

}
