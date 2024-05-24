import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 30, left: 30, bottom: 30, top: 60),
            child: Center(
              child: Image.asset('assets/images/instagram.png'),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Phone number,email or username",
                hintStyle: const TextStyle(fontSize: 16.0),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: " Password",
                hintStyle: const TextStyle(fontSize: 16.0),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  'Log In',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forgot your Login details?'),
              Text(
                'Get help logging in.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              children: [
                Flexible(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Text('OR'),
                Flexible(
                    child: Divider(
                  thickness: 2,
                )),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Log in With Facebook',
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont have an account?'),
              Text(
                'Sign up.',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
