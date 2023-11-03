import 'package:flutter/material.dart';
import 'package:sample_app/pages/login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static const List<String> list = <String>['Select College', 'Meghnad Saha Institute Of Technology', 'Heritage Institute Of Technology', 'Other Colleges'];
  String dropdownValue = list.first;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.all(1), // Border width
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(50), // Image radius
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
                      hintText: 'First Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 45,
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintText: 'Last Name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
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
                  height: 16,
                ),
  TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.school),
          contentPadding: EdgeInsets.all(0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          suffixIcon: DropdownButton<String>(
            underline: const SizedBox(),
            value: dropdownValue,
            padding: EdgeInsets.only(left: 50),
            icon: const Icon(Icons.arrow_drop_down), 
            onChanged: (String? value) {
              setState(() {
                dropdownValue = value!;
              });
            },
            isExpanded: true,
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),

                SizedBox(
                  height: 16,
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
                  height: 16,
                ),
                SizedBox(
                  height: 45,
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(0),
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.key),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 30,
                // ),

                ListTile(
                  title: Text('Accept Terms & Conditions'),
                  leading: Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return LoginPage();
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          backgroundColor: Color.fromARGB(245, 223, 40, 27)),
                      child: Text('SignUp')),
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
