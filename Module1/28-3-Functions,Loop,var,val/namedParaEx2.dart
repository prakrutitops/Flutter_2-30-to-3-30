void detail(String name,{String surname,String email,String password})
{

 print('Your Name is $name');
 print('Your Surname is $surname');
 print('Your email is $email');
 print('Your Password is $password');
}

void main()
{
  detail("Nitesh",email: "Nitesh@gmail.com",surname: "Chavda",password:"1234");

}