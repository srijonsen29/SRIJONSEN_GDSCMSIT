
import 'package:flutter/material.dart';
import 'package:sample_app/pages/sign_up.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return  Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container( 
	padding: EdgeInsets.all(1), // Border width 
	decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle), 
	child: ClipOval( 
		child: SizedBox.fromSize( 
			size: Size.fromRadius(75), // Image radius 
			child: Image.asset('images/gdsc.png', fit: BoxFit.cover), 
		), 
	), 
),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                
                child: ElevatedButton(onPressed:() {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                },));
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    ),
                backgroundColor: Color.fromARGB(245, 223, 40, 27)
              ),
               child: Text('Login')),
              ),
              SizedBox(
                height: 10,),
             Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? "),
                    TextButton(child: Text("SignUp"), onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return SignUpPage();
                      },
                      ),
                      );
                    },),
                  ],
                ),
                 Spacer(),
            ],
            ),
        ),
      ),
        ),
    );
  }
}

