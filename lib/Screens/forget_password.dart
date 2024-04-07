import 'package:flutter/material.dart';
import 'package:task_flutter/Screens/SignUp.dart';
import 'package:task_flutter/Screens/Verification.dart';




class ForgetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Forget(),
      ),
    );
  }
}

class Forget extends StatefulWidget {
  @override
  _ForgetState createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  final TextEditingController _forgetController = TextEditingController();
  
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _forgetController,
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

        

        
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Verification()));

              // if (_formKey.currentState?.validate()) {
              //   // Form is validated, proceed with sign-in
              //   // For example, you can access the entered name using _nameController.text
              //   // and implement your sign-in logic here
              //   print('Sign in successful');
              // }
            },
            child: Text('forget and send a code'),
          ),
 
        
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