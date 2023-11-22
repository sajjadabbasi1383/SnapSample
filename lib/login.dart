import 'package:flutter/material.dart';
import 'package:snap_map/home_screen.dart';
import 'package:snap_map/map_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool state = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 170,
              ),
              const SizedBox(
                height: 50,
              ),
              stateWidget()
            ],
          ),
        ),
      ),
    );
  }

  Widget stateWidget() {
    Widget widget = signIn();
    if (state == true) {
      widget = signIn();
    } else if (state == false) {
      widget = signUp();
    }
    return widget;
  }

  Widget signIn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Email
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF0ce369), width: 2.0)),
              hintText: 'Email',
              contentPadding: const EdgeInsets.all(25.0),
            ),
          ),
        ),
        //Confirm Password
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF0ce369), width: 2.0)),
              hintText: 'Confirm Password',
              contentPadding: const EdgeInsets.all(25.0),
              suffixIcon: Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: const Icon(
                  Icons.visibility_off,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
        //Forgot Password
        Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          child: const Text('Forgot Password?', textAlign: TextAlign.right),
        ),
        //button
        Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF0ce369),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
            ),
            child: const Text('Sign In',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Don\'t have an account?'),
            TextButton(
              onPressed: () {
                setState(() {
                  state = false;
                });
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget signUp() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Email
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF0ce369), width: 2.0)),
              hintText: 'Email',
              contentPadding: const EdgeInsets.all(25.0),
            ),
          ),
        ),
        //password
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF0ce369), width: 2.0)),
              hintText: 'Password',
              contentPadding: const EdgeInsets.all(25.0),
              suffixIcon: Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: const Icon(
                  Icons.visibility_off,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
        //confirm pass
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFFF1F1FB), width: 2.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF0ce369), width: 2.0)),
              hintText: 'Confirm Password',
              contentPadding: const EdgeInsets.all(25.0),
              suffixIcon: Container(
                margin: const EdgeInsets.only(right: 20.0),
                child: const Icon(
                  Icons.visibility_off,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
        ),
        //button
        Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }),
              );
            },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF0ce369),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
            ),
            child: const Text('Sign UP',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Already have an account?'),
            TextButton(
              onPressed: () {
                setState(() {
                  state = true;
                });
              },
              child: const Text(
                'Sign In',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        )
      ],
    );
  }
}
