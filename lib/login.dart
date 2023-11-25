import 'package:flutter/material.dart';
import 'package:snap_map/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool state = true;
  final _formKeySignIn = GlobalKey<FormState>();
  final _formKeySignUp = GlobalKey<FormState>();
  bool _obscureSignInText = true;
  bool _obscureSignUpText = true;
  bool _obscureSignUpConfirmText = true;

  void _toggleSignIn() {
    setState(() {
      _obscureSignInText = !_obscureSignInText;
    });
  }

  void _toggleSignUp() {
    setState(() {
      _obscureSignUpText = !_obscureSignUpText;
    });
  }

  void _toggleSignUpConfirm() {
    setState(() {
      _obscureSignUpConfirmText = !_obscureSignUpConfirmText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 170,
                ),
                const SizedBox(
                  height: 40,
                ),
                stateWidget()
              ],
            ),
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
    return Form(
        key: _formKeySignIn,
        child: Column(
          children: [
            //Email
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your Email';
                  }
                  //return null;
                },
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
            ),
            //Password
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,
              ),
              margin: const EdgeInsets.all(10.0),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Your Password';
                  }
                  //return null;
                },
                obscureText: _obscureSignInText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Container(
                    margin: const EdgeInsets.only(right: 20.0),
                    child: IconButton(
                      onPressed: () {
                        _toggleSignIn();
                      },
                      icon: _obscureSignInText
                          ? const Icon(
                              Icons.visibility_sharp,
                            )
                          : const Icon(
                              Icons.visibility_off,
                            ),
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
                  if (_formKeySignIn.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }),
                    );
                  }
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xFF0ce369),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                ),
                child: const Text(
                  'Sign In',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
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
            ),
          ],
        ));
  }

  Widget signUp() {
    return Form(
      key: _formKeySignUp,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Email
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.white,
            ),
            margin: const EdgeInsets.all(10.0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your Email';
                }
                //return null;
              },
              decoration: const InputDecoration(
                hintText: 'Email',
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
            child: TextFormField(
              obscureText: _obscureSignUpText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your Password';
                }
                //return null;
              },
              decoration: InputDecoration(
                hintText: 'Password',
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    onPressed: () {
                      _toggleSignUp();
                    },
                    icon: _obscureSignUpText
                        ? const Icon(
                            Icons.visibility_sharp,
                          )
                        : const Icon(
                            Icons.visibility_off,
                          ),
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
            child: TextFormField(
              obscureText: _obscureSignUpConfirmText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Your Confirm Password';
                }
                //return null;
              },
              decoration: InputDecoration(
                hintText: 'Confirm Password',
                suffixIcon: Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    onPressed: () {
                      _toggleSignUpConfirm();
                    },
                    icon: _obscureSignUpConfirmText
                        ? const Icon(
                            Icons.visibility_sharp,
                          )
                        : const Icon(
                            Icons.visibility_off,
                          ),
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
                if (_formKeySignUp.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return const HomeScreen();
                    }),
                  );
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF0ce369),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
              ),
              child: const Text(
                'Sign UP',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
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
      ),
    );
  }
}
