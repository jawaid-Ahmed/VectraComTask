import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();


  static String email='';
  static String pass='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login page',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.grey),
        ),
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: Container(
                    width: double.infinity,

                    child: Image.network('https://t3.ftcdn.net/jpg/03/39/70/90/360_F_339709048_ZITR4wrVsOXCKdjHncdtabSNWpIhiaR7.jpg')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                controller: passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  if(emailController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Provide email')));
                  }else if(passController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Provide Password')));
                  }else if(pass=='' && email==''){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Create Account First')));

                  }else if(emailController.text.toString()==email && passController.text.toString()==pass){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Logged In Successfully')));
                  }else{
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Invalid Credentials')));
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: TextButton(
                onPressed: () {
                  if(emailController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Provide email')));
                  }else if(passController.text.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Provide Password')));
                  }else{
                      email=emailController.text.toString();
                      pass=passController.text.toString();

                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content:Text('Registered Successfully')));

                  }
                },
                child: const Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(height: 20,)
          ]),
    );
  }
}
