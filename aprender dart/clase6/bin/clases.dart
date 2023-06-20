class galleta{
  
  /*
  String? nombre;
  int? edad;*/ //? las variables aca creadas son publicas por defecto, para hacerlas privadas se le agrega un guin bajo ( _ ) al unicio del nombre de la variable, asi:

  String? _nombre; // ademas siempre, en cada uso que se le de a la variable debe de conservar la barra baja
  int? _edad; 

  //*galleta({this._nombre, this._edad}); // los valores no publicos no se pueden poner como parametros opcionales, por lo tanto lo anterior esta malo, su forma correcta seria:

  galleta(this._nombre, this._edad);


  //! SETTER
  set setEdad(int edad){ // se ha creado un setter el cual se llama setEdad, recoge el dato y se almacena en el parametro
    _edad = edad;
  }

  //! GETTER
  int getEdad() => _edad!; //? cada vez que de problema en que no puede ser algo con valor null se le agrga al fu¡inal un nullcheker (!) asi no dara problemas 
  //! solo usar cuando se sabe que la variable nunca sera null
  

}