import 'dart:io';

void main()
{
  print('Enter Any Number:');
  int num = int.parse(stdin.readLineSync());

  if(num%2==0)
  {
      print('Even');
  }
  else
  {
    print('Odd');
  }
}