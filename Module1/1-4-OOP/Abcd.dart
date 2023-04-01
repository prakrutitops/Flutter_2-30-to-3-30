

import 'dart:io';

void main()
{

  var fout = File("E://tops.txt");
  print(fout.path);
  print(fout.absolute);
  print(fout.parent);

}