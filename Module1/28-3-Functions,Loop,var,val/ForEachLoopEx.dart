void main()
{
  int i;
  for(i=1;i<=10;i++)
    {
      if(i==5)
      {
          continue;
      }
      print("${i}");
    }

  for(i=1;i<=10;i++)
  {
    if(i==5)
    {
      break;


    }
    print("${i}");
  }
}