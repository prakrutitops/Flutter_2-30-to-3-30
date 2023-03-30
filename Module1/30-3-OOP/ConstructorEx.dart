class Dart1
{
  int id = 1;
  String name;

  Dart1(this.id, this.name); //parameterized constructor

  Dart1.mynewconst() //named constructor
  {
    print("This is my custom constructor");
  }

  Dart1.myAnotherNamedConstructor(this.id, this.name);//named constructor


  void study()
  {
    print("${this.name} is now studying");
  }

  void sleep()
  {
    print("${this.name} is now sleeping");
  }

}

void main()
{
  var student1 = Dart1(23, "Peter"); 		// One Object, student1 is reference variable
  print("${student1.id} and ${student1.name}");

  student1.study();
  student1.sleep();


  var student2 = Dart1(45, "Sam");		// One Object, student2 is reference variable
  print("${student2.id} and ${student2.name}");

  student2.study();
  student2.sleep();


  var student3 = Dart1.mynewconst();   // One object, student3 is a reference variable
 /* student3.id = 54;
  student3.name = "Rahul";
  print("${student3.id} and ${student3.name}");*/


  var student4 = Dart1.myAnotherNamedConstructor(87, "Paul");
 /* print("${student4.id} and ${student4.name}");*/


}