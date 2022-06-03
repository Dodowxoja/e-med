import 'package:e_med/core/components/my_app_bar_auth.dart';
import 'package:e_med/core/constants/const_color.dart';
import 'package:e_med/core/constants/const_text.dart';
import 'package:e_med/views/auth/cubit/auth_cubit.dart';
import 'package:e_med/views/auth/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

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
        builder: (context, state) {
          return SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(ConstText.textSignUp1), //text1
                    SizedBox(
                      height: 89,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(children: [Text(ConstText.textSignUp2)]), //text2
                          const SizedBox(height: 10),
                          Form(
                            //?Text form FULL NAME
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter your full name...",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 125,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(children: [Text(ConstText.textSignUp3)]), //text3
                          const SizedBox(height: 10),
                          Form(
                            //?textForm phone number
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Enter your phone number...",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),

                          Text(ConstText.textSignUp4) //text4
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 89,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(children: [Text(ConstText.textSignUp5)]), //text5
                          const SizedBox(height: 10),
                          Form(
                            //?textForm createPass
                            child: TextFormField(
                              obscureText: context.watch<AuthCubit>().isTrue,
                              decoration: InputDecoration(
                                hintText: "Create your new password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: IconButton(
                                  icon: !context.watch<AuthCubit>().isTrue
                                      ? const Icon(Icons.remove_red_eye)
                                      : const Icon(Icons.disabled_visible),
                                  onPressed: () {
                                    context.read<AuthCubit>().visable();
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Countinue
                    const SizedBox(height: 54)
                  ],
                ),
              ),
            ),
          );
        },
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
          child: const Text('Continue'),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/cart', (route) => false);
          },
        ),
      ),
    );
  }
}
