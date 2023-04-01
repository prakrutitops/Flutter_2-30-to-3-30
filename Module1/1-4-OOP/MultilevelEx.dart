class A1
{
  void a()
  {
    print('A Called');
  }
}
class B1 extends A1
{
  void b()
  {
    print('B Called');
  }
}
class C1 extends B1
{
  void c()
  {
    print('C Called');
  }
}
class D1 extends C1
{
  void d()
  {
    print('D Called');
  }
}

void main()
{
   var d = D1();
   d.a();
   d.b();
   d.c();
   d.d();
   

}