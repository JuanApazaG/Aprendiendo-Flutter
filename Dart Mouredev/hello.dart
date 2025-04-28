import 'dart:collection';

void main(){
  //esto es un comentario
  /*h
  o
  l
  a
  */

  //variables
  var myString = "Esto es una cadena de texto";
  // helloDart = "Hola dart";
  // helloDart = 23; esto es un error dart es fuertemente tipado esto es un string y sera siempre un string
  print(myString);

  String myString2 = "Esto es una cadena de texto 2";
  print(myString2);

  //otro tipo de dato
  var myInt = 24;
  myInt = myInt +7;
  print(myInt);
  print(myInt - 20);

  int myInt2 = 5;
  print(myInt2);

  //para decimales
  var myDouble = 6.5;
  print(myDouble);
  myDouble = 6;
  print(myDouble);

  double myDouble2 = 6.5;
  print(myDouble2);

  var myBool = false;
  myBool = true;
  print(myBool);
  bool myBool2 = false;
  print(myBool2);

  //Constantes
  final myFinal = "Mi propiedad final";
  print(myFinal);
  // myFinal = "mi nueva propiedad final"; Error
  final myFinalInt = myInt;
  print(myFinalInt);

  const myConst = "Mi propiedad constante";
  // myConst = "Mi nueva porpiedad constante";Error
  // const myConstInt = myConst; Errotr 
  print(myConst);

  if (myInt == 30){
    print("El valor de myInt es ${myInt}");
  } else if(myInt == 31){
    print("El valor de myInt es 31");
  }
  else{
    print("El valor de myInt no es 30, es ${myInt}");
  }
  myFunction();
  var myReturn = myFunctionWithReturn();
  print(myReturn);

  //collection
  var myList = ["juan", "Apaza", "@juanapaza", "juan", 21];
  print(myList);

  // /Sets
  var mySet = {"juan", "Apaza", "@juanapaza","juan"};
  print(mySet);

  //Mapas aqui es clave valor
  var myMap = {
    "nombre": "Juan",
    "apellido": "Apaza",
    "edad": 24,
    "email": "@juanapaza"  
    };
  print(myMap["nombre"]);

  //flujo de control iteracines es el for
  for (final i in myList){
    print(i);
  }

  //while
  var myCounter = 0;
  while (myCounter <= myInt){
    print(myCounter);
    myCounter ++;
  }

  //clases
  var myClass = MyClass("juan", 23);
  print(myClass.name);
  print(myClass.age);

  //objetos opcionales
  // String? myOptionalStrign
  // print(myOptionalStrign); //null

  print(MyEnum.dart);

}
 
void myFunction(){
  print("Esto es una funcion");
}
String myFunctionWithReturn(){
  return "Esto es una funcion con retorno";
}

class MyClass{
  String name;
  int age;

  MyClass(this.name, this.age){} //constructor
}

enum MyEnum {dart, flutter, dartFlutter} //es un tipo de dato que puede tener un valor de los que se le asigna