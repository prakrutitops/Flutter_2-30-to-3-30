class Bank
{
    void bank()
    {
      print("banking");
    }
}
class Current extends Bank
{
  void current()
  {
    print("current");
  }
}
class Save extends Bank
{
  void save()
  {
    print("saving");
  }
}

void main()
{
  var c1 = Current();
  var s1 = Save();

  c1.current();
  c1.bank();
  s1.save();

}