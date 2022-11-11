import 'package:flutter/material.dart';
import 'package:http/http.dart ' as http;
import 'package:http/http.dart%20';
import 'package:msocial_scanner_app/Home_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObscure = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> login(String email, password) async {
    try {
      Response response = await post(
          Uri.parse(
              'https://api.msocialin.com/api/Authontication_Controller/login'),
          body: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print('Pass');
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        print('Failed');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(254, 114, 113, 1),
            Color.fromRGBO(210, 73, 102, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 200,
              ),
              const SizedBox(height: 50),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  prefixIcon: Icon(
                    Icons.mail_outline,
                    color: Color.fromRGBO(188, 52, 88, 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromRGBO(188, 52, 88, 1)),
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: _isObscure,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(
                    Icons.password,
                    color: Color.fromRGBO(188, 52, 88, 1),
                  ),
                  // suffixIcon: IconButton(
                  //   icon: icon(_isObscure? Icons.visibility: Icons.visibility_off)),

                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 3, color: Color.fromRGBO(188, 52, 88, 1)),
                    // borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: () {
                  login(emailController.text.toString(),
                      passwordController.text.toString());
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(119, 14, 45, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: Text(
                      'Sign in',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
