void main()
{

  List<String> northcountries = ["USA", "INDIA", "CHINA"]; //growable list

  northcountries.add("UK");

  List<String> southcountries = ["USA", "INDIA", "CHINA"];

  southcountries.add("A"); //add

  northcountries.addAll(southcountries);//addAll
  //northcountries.remove("A");
  northcountries.removeAt(7);

  //northcountries.retainWhere((element) => false)


  for (String element in northcountries) // Using Individual Element (Objects)
    {

    print(element);
  }


}