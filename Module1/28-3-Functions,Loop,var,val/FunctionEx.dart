//with para with return type




/*2.With Para Without Return Type
3.Without Para Without Return Type
4.Without Para With Return Type*/



//1.With Para With Return type
int addition(int a,int b)
{

  return a+b;
}

//2.With Para Without Return Type
addition2(int a,int b)
{
  int c = a+b;
  print(c);

}

//3.Without Para Without Return Type
addition3()
{
  int a=6;
  int b=5;
  int c = a+b;
  print(c);

}
//4.Without Para With Return Type
int addition4()
{
  int a=6;
  int b=5;
  int c = a+b;
  return c;

}

void main()
{
  print(addition(6,5));
  addition2(6,5);
  addition3();
  print(addition4());
}

