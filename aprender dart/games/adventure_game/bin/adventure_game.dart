import 'dart:io'; // para recibir informacion del usuario

void main(List<String> arguments) {
  print('como te llamas?: ');
  String namePlayer = stdin.readLineSync()!; // se pone la admiraion para solucionar un error NI PTA IDEA CUAL ES

  print('''
$namePlayer vas andando por una carretera y esta llega a su fin, ir a la derecha o a la izquierda.
derecha ---- (1)
izquierda -- (2)
que direccion escoges?(1/2): ''');
  //int address = stdin.readByteSync();
  String address = stdin.readLineSync()!;

  switch(address){
    case '1':
      print('''
te encuentras en un rio y tienes la opcion de cruzar nadando o seguir en busca de un puente.

seguian andando --- (1)
cruzar nadando ---- (2)

que opocion escogerias?: ''');
      String opcion = stdin.readLineSync()!;

      switch(opcion){
        case '1':
          print('te encuentras con un troll que te estreipa con su unico pie y acaba tu aventura');
          break;

        case '2':
          print('en medio del rio sale una bestia de 3 cabezas y te parte en 2, mueres...');
          break;
      }

      break;

    case '2':
        print('te encuentras con un troll que te estreipa con su unico pie y acaba tu aventura');
      break;
    
    default:
      print('opcion no valida...');
      exit(1);
  }

}
