class Data
{
    int cal(int a,int b)
    {
     return a+b;
    }
    double cal2(double a, double b,double c)
    {
      return a*b*c;
    }


}

void main()
{
  var d1 = Data();
  print(d1.cal(5,6));
  print(d1.cal2(2.2,3.5,6.8));
}