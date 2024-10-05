import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/core/helper/show_snackbar.dart';
import 'package:exoplanet_odyssey/core/utils/constants/colors.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/features/auth/manger/bloc/auth_bloc.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_button.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_textformfield.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_onboarding_slider/background.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String emailAddress = '';
  String password = '';
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
            isLoading = true;
          } else if (state is AuthSuccess) {
            isLoading = false;
            Navigator.pushNamed(this.context, AppRoutesName.Trivia,
                arguments: emailAddress);
          } else if (state is AuthFailed) {
            isLoading = false;
            showSnackBar(context, state.errMessage);
          } else {}
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: isLoading,
            child: Scaffold(
              body: BackgroundImage(
                backgroundImage: 'assets/images/login/background.png',
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      // Header Section
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height:
                                    widgetHeight(context: context, height: 50)),
                            const Text(
                              'Welcom   \nback',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Pacifico',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Scrollable Form Section
                      Expanded(
                        flex: 3,
                        child: Form(
                          key: formKey,
                          child: ListView(
                            children: [
                              const Text(
                                'LOGIN',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 15),
                              CustomTextFormField(
                                labelText: 'Email',
                                onChanged: (data) {
                                  emailAddress = data;
                                },
                              ),
                              const SizedBox(height: 10),
                              CustomTextFormField(
                                labelText: 'Password',
                                obscureText: true,
                                onChanged: (data) {
                                  password = data;
                                },
                              ),
                              const SizedBox(height: 15),
                              CustomButton(
                                text: 'LOGIN',
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    BlocProvider.of<AuthBloc>(context).add(
                                      LoginEvent(
                                        email: emailAddress,
                                        password: password,
                                      ),
                                    );
                                  }
                                },
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Don\'t have an account?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, AppRoutesName.register);
                                    },
                                    child: const Text(
                                      'Register',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
