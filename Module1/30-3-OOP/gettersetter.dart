class Acer
{
  String name;        // Instance Variable with default Getter and Setter

  double _percent;

  void set percentage(double marksSecured) => _percent = (marksSecured / 500) * 100;
  double get percentage => _percent;
}
void main()
{
  var a1 = Acer();

  a1.name="Nitesh";
  a1.percentage = 350.0;

  print("${a1.name}");
  print("${a1.percentage}");
}