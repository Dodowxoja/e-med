import 'package:e_med/core/components/my_app_bar_auth.dart';
import 'package:e_med/core/components/my_text_style.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/views/auth/cubit/auth_cubit.dart';
import 'package:e_med/views/auth/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: myScaffold(context),
    );
  }

  Scaffold myScaffold(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarAuth.myAppBar('Sign Up', context),
      backgroundColor: ConstColor.colorWhite,
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) => SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.89,
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: Text(
                      "Log in to your acoount",
                      style:
                          MyTextStyle.textStyle(colors: ConstColor.colorDark40),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Phone number",
                          style: MyTextStyle.textStyle(
                              colors: ConstColor.colorDark40),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "+998",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Text(
                          "Your password",
                          style: MyTextStyle.textStyle(
                              colors: ConstColor.colorDark40),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          obscureText: context.watch<AuthCubit>().isTrue,
                          decoration: InputDecoration(
                            hintText: "Enter your password...",
                            suffixIcon: IconButton(
                              icon: !context.watch<AuthCubit>().isTrue
                                  ? const Icon(Icons.remove_red_eye_outlined)
                                  : const Icon(Icons.disabled_visible_outlined),
                              onPressed: () {
                                context.read<AuthCubit>().visable();
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: ConstColor.colorBlue,
            fixedSize: Size(MediaQuery.of(context).size.width, 54),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: const Text('Log In'),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/cart', (route) => false);
          },
        ),
      ),
    );
  }
}
