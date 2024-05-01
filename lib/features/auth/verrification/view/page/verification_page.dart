import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_flutter/core/utils/context_extention.dart';
import 'package:task_flutter/features/auth/verrification/controller/cubit/verification_cubit.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final VerificationCubit cubit = context.read<VerificationCubit>();
          return Scaffold(
             resizeToAvoidBottomInset: false,
            appBar: AppBar(),
            body: Column(
            
              children: [
                Image(image:AssetImage("assets/images/pincode.jpg"),width:  context.width/0.2,height: context.hight/3,),
                SizedBox(
                  height: 20,

                ),
                Text(" Check your Inbox then,Enter your code"),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      length: 5,
                      obscureText: true,
                      obscuringCharacter: '*',
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        if (v!.length < 3) {
                          return "I'm from validator";
                        } else {
                          return null;
                        }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: context.width/7,
                        activeFillColor: Colors.white,
                        fieldOuterPadding: EdgeInsets.all( context.width/70)
                      ),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 200),
                      // enableActiveFill: true,
                      controller: cubit.pinCodeController,
                      keyboardType: TextInputType.number,
                      boxShadows: const [
                        BoxShadow(
                          offset: Offset(0, 1),
                          color: Colors.black12,
                          blurRadius: 10,
                        )
                      ],
                      onCompleted: (v) {
                        debugPrint("Completed");
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        debugPrint(value);
                        // setState(() {
                        //   currentText = value;
                        // });
                      },
                      beforeTextPaste: (text) {
                        debugPrint("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                 ),

                  IconButton(onPressed: cubit.onTapConfirm, icon: Icon(Icons.done))
                 
                ],
            ),
          );
        },
      ),
    );
  }
}
