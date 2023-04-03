void main()
{
  Map<String, int> countryDialingCode =
  {       // Method 1: Using Literal
    "USA": 1,
    "INDIA": 91,
    "PAKISTAN": 92
  };

  Map<String, String> fruits = Map();             // Method 2: Using Constructor
  fruits["apple"] = "red";
  fruits["banana"] = "yellow";
  fruits["guava"]  = "green";


  print(fruits.containsKey("apple"));
  print(fruits["apple"]);
  print("\n");
  for (String key in fruits.values) {           // Print all keys
    print(key);
  }


  fruits.forEach((key, value) => print("key: $key and value: $value"));
}