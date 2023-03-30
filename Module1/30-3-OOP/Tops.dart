class Tops
{

    int id;
    String name;

}
void main()
{
    //var objname = classname();

    var t1 = Tops();
    t1.id=101;
    t1.name="Nitesh";

    var t2 = Tops();
    t2.id=102;
    t2.name="Mukund";

    print("${t1.id} ,  ${t1.name}");
    print("${t2.id} ,  ${t2.name}");



}