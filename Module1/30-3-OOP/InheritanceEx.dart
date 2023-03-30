class A1
{
  void a1()
  {
    print('A1 Detail Accessed');
  }
}
class B1 extends A1
{
  void b1()
  {
    print('B1 Detail Accessed');
  }
}
void main()
{
    var b = B1();
    b.b1();
    b.a1();

}