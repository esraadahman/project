import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_flutter/features/auth/registration/controller/cubit/regestration_cubit.dart';
import 'package:task_flutter/features/auth/registration/view/component/button_widget.dart';
import 'package:task_flutter/features/auth/registration/view/component/required_data_widget.dart';

class RgestrationPage extends StatelessWidget {
  const RgestrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: BlocProvider<RegestrationCubit>(
            create: (context) => RegestrationCubit(),
            child: BlocBuilder<RegestrationCubit, RegestrationState>(
              builder: (context, state) {
                RegestrationCubit controller = context.read<RegestrationCubit>();
                return Scaffold(
                  body: RequiredDateWidget(controller: controller,),
                  bottomNavigationBar:
                      SizedBox(height: 130, child: ButtonWidget(controller: controller,)),
                );
              },
            ),
          ),
        ));
  }
}
