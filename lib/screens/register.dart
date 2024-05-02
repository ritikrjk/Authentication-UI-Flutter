import 'package:flutter/material.dart';
import 'package:login_user_interface/screens/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 210, 210),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Icon and message to the user
            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Image.asset('assets/customer-service.png', height: 90),
                ),
                Padding(
                  padding: EdgeInsets.all(35.0),
                  child: Text("Welcome lets get you an account first"),
                ),
              ],
            ),

            //username & password and sign in btn
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Email or Phone no',
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Set Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    height: 55,
                    width: 410,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 41, 36, 36),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),

            //or contnue with different Ott platforms

            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Divider(),
            ),
            Text('or continue with'),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset('assets/google.png'),
                  ),
                ),
                //gap
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Image.asset('assets/app-store.png'),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            //Not a Member tapping
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already a User ?'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text('Login',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 95, 173),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
