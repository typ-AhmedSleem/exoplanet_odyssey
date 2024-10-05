import 'package:exoplanet_odyssey/core/helper/show_snackbar.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_height.dart';
import 'package:exoplanet_odyssey/core/utils/responsive_ui/widget_width.dart';
import 'package:exoplanet_odyssey/features/auth/manger/bloc/auth_bloc.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/auth_choice.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_button.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_text_button.dart';
import 'package:exoplanet_odyssey/features/auth/widgets/custom_textformfield.dart';
import 'package:exoplanet_odyssey/features/widgets/background_image.dart';
import 'package:exoplanet_odyssey/features/widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  String emailAddress = '';
  String password = '';
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
          backgroundImage: 'assets/images/login/background.png',
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widgetWidth(context: context, width: 51.0),
                  vertical: widgetHeight(context: context, height: 78.0)),
              child: BlocProvider(
                create: (context) => AuthBloc(),
                child: BlocConsumer<AuthBloc, AuthState>(
                  listener: (context, state) {
                    if (state is AuthLoading) {
                      isLoading = true;
                    } else if (state is AuthSuccess) {
                      isLoading = false;
                      Navigator.pushNamed(this.context, '/chatPage',
                          arguments: emailAddress);
                    } else if (state is AuthFailed) {
                      isLoading = false;
                      showSnackBar(context, state.errMessage);
                    } else {}
                  },
                  builder: (context, state) {
                    return ModalProgressHUD(
                      inAsyncCall: isLoading,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const HeaderText(
                            firstLine: 'Welcome',
                            secondLine: 'Back',
                          ),
                          SizedBox(
                            height: widgetHeight(context: context, height: 200),
                          ),
                          Padding(
                            padding: EdgeInsets.all(
                                widgetHeight(context: context, height: 10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const CustomTextFormField(
                                  labelText: 'Email Address',
                                ),
                                SizedBox(
                                    height: widgetHeight(
                                        context: context, height: 23)),
                                const CustomTextFormField(
                                  labelText: 'Password',
                                  obscureText: true,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  widgetHeight(context: context, height: 30)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
                                  text: 'Login',
                                  onPressed: () {
                                    BlocProvider.of<AuthBloc>(context).add(
                                      LoginEvent(
                                        email: emailAddress,
                                        password: password,
                                      ),
                                    );
                                  }),
                              SizedBox(
                                height:
                                    widgetHeight(context: context, height: 25),
                              ),
                              const AuthChoice(
                                isLogin: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          )),
    );
  }
}
