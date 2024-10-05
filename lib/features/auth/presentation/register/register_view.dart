import 'package:exoplanet_odyssey/config/routes/app_routes.dart';
import 'package:exoplanet_odyssey/core/helper/show_snackbar.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/features/auth/manger/bloc/auth_bloc.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_button.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_textformfield.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:exoplanet_odyssey/features/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
            Navigator.pushReplacementNamed(this.context, AppRoutesName.Trivia,
                arguments: emailAddress);
          } else if (state is AuthFailed) {
            isLoading = false;
            showSnackBar(context, state.errMessage);
          } else {
            isLoading = false;
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: isLoading,
            child: Scaffold(
              body: BackgroundImage(
                backgroundImage: 'assets/images/login/background.png',
                child: Padding(
                  padding: EdgeInsets.only(
                      left: widgetWidth(context: context, width: 51.0),
                      right: widgetWidth(context: context, width: 51.0),
                      top: widgetHeight(context: context, height: 78.0)),
                  child: Column(
                    children: [
                      // Header Section

                      // Scrollable Form Section
                      Expanded(
                        flex: 3,
                        child: Form(
                          key: formKey,
                          child: ListView(
                            children: [
                              const HeaderText(
                                firstLine: 'Welcome',
                                secondLine: 'Back',
                              ),
                              SizedBox(
                                  height: widgetHeight(
                                      context: context, height: 150)),
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
                                text: 'REGISTER',
                                onPressed: () async {
                                  if (emailAddress.isEmpty ||
                                      password.isEmpty) {
                                    showSnackBar(context,
                                        'Please enter both email and password');
                                    return;
                                  }

                                  if (formKey.currentState!.validate()) {
                                    BlocProvider.of<AuthBloc>(context).add(
                                        RegisterEvent(
                                            email: emailAddress,
                                            password: password));
                                  }
                                },
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Already have an account?',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Login',
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
