class StudentDetails
{
  int id;
  String name;
  String surname;
  String aadhar;
  String PAN;

  StudentDetails(this.id,this.name,this.surname,this.aadhar,this.PAN);

  StudentDetails.m1(this.id,this.name,this.surname,this.aadhar);

  StudentDetails.m2(this.id,this.name,this.surname);

  StudentDetails.m3(this.name,this.surname);

  void display()
  {
    print("${id} , ${name}, ${surname}, ${aadhar}, ${PAN}");


  }




}
void main()
{

    var s1 = StudentDetails(101, "A", "B", "12345677", "AXSJKSJS");
    var s2 = StudentDetails(101, "A", "B", "12345677", "AXSJKSJS");
    s1.display();
    s2.display();
}