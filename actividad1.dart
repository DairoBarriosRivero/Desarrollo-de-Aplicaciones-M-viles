void main(){

  final persona1 = Person("Dairo","Barrios",20);

  print(persona1);

  final Map<String, dynamic> perJson = {
    "name" : "Dairo",
    "apellido" : "Barrios",
    "edad" : 20
  };

  final fperson = Person.fromJson(perJson);

  print(fperson);

  String Saludo (){
    return "Hola Saludos";
  }
  print(Saludo());

  String SaludoPer(String name){
    return "Hola $name";
  }
  print(SaludoPer("Dairo"));

  String Saludosflecha () => "Hola Saludos desde funcion Flecha";

  print(Saludosflecha());

  String SaludoPerFlecha (String name,String apellido) => "Hola $name $apellido";

  print(SaludoPerFlecha("Dairo","Barrios"));
}

class Person{

  String name;
  String apellido;
  int edad;

  Person(this.name,this.apellido,this.edad);

  Person.fromJson(Map<String, dynamic> json)
    : name = json["name"] ?? "No name found",
    apellido = json["apellido"] ?? "No apellido found",
    edad = json["edad"] ?? 0;

  @override
  String toString() {
    return '$name, $apellido,$edad';
  }
}