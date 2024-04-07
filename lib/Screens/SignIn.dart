import 'package:flutter/material.dart';
import 'package:task_flutter/Screens/SignUp.dart';
import 'package:task_flutter/Screens/forget_password.dart';

class MyValidation {
  String? nameValidate(String value) {
    // Your validation logic here
    if (value.isEmpty) {
      return 'Please enter your name';
    }
    return null; // Return null if validation passes
  }
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final TextEditingController _nameController = TextEditingController();
   final TextEditingController _EmailController = TextEditingController();
    final TextEditingController _PasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            keyboardType: TextInputType.name,
           
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Name',
            ),
          ),
           SizedBox(height: 20),

           TextFormField(
            controller: _EmailController,
            keyboardType: TextInputType.name,
           
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Email',
            ),
          ),
           SizedBox(height: 20),

          TextFormField(
            controller: _PasswordController,
            keyboardType: TextInputType.number,
           
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(5),
              ),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // if (_formKey.currentState?.validate()) {
              //   // Form is validated, proceed with sign-in
              //   // For example, you can access the entered name using _nameController.text
              //   // and implement your sign-in logic here
              //   print('Sign in successful');
              // }
            },
            child: Text('Sign In'),
          ),
            SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(width: 50),
              Text(
                "Don't have an Account Yet?",
                style:
                    TextStyle(color: Colors.purple, fontSize: 15),
              ),
              SizedBox(width: 5),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Text(
                    "SignUp",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
               SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SizedBox(width: 50),
              Text(
                "Forget Password?",
                style:
                    TextStyle(color: Colors.purple, fontSize: 15),
              ),
              SizedBox(width: 5),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgetScreen()));
                  },
                  child: Text(
                    "Forget",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: SignInScreen(),
//   ));
// }