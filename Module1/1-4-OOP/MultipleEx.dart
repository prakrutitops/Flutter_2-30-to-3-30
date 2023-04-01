abstract class P
{
  void p1();

}
abstract class Q
{
  void q1();

}
class R implements P,Q
{
  @override
  void p1()
  {
    print('P1 Accessed');
  }

  @override
  void q1()
  {
    print('Q1 Accessed');
  }

}
void main()
{
  var r1 = R();
  r1.p1();
  r1.q1();
}