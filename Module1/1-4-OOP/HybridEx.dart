class M
{
    void m1()
    {
      print('M1 Accessed');
    }
}
class N extends M
{
  void n1()
  {
    print('N1 Accessed');
  }
}
abstract class O
{
  void o1();
}
class T extends N implements O
{
  void t1()
  {
    print('T1 Accessed');
  }

  @override
  void o1()
  {
   print('O1 Accessed');
  }
}
void main()
{
  var t1 = T();
  t1.m1();
  t1.n1();
  t1.t1();
  t1.o1();
}