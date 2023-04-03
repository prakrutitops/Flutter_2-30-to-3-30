void main()
{

  List l1 = List(5);

 /* l1.add("Android");
  l1.add("Ios");
  l1.add("Flutter");
  l1.add("Java");
  l1.add("Php");
*/

  l1[0]="Android";
  l1[1]="Ios";
  l1[2]="Flutter";
  l1[3]="Java";
  l1[4]="Php";


  l1[1]="DM";
  l1[4]=null;

  print("\n ");

  print(l1[1]);

  print("\n ");

  //print(l1);
  for (String element in l1) // Using Individual Element (Objects)
  {

    print(element);
  }
  print("\n ");

  l1.forEach((element) => print(element));

  print("\n ");

  for (int i = 0; i < l1.length; i++)
  {              // Using Index
    print(l1[i]);
  }
}