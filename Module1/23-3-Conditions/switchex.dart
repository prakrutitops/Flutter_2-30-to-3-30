import 'dart:io';

void main()
{


  print('Enter Any Number:');
  //var num = stdin.readLineSync().toString();
  int num = int.parse(stdin.readLineSync());

  switch(num)
  {
    case 1: //print('English');
              stdout.write("English");

      break;

    case 2: print('Hindi');
    break;

    case 3: print('Guj');
    break;


  }
}