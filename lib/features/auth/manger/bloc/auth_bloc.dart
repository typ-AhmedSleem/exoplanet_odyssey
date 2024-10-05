import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is LoginEvent) {
        emit(AuthLoading());
        try {
          await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: event.email, password: event.password);
          emit(AuthSuccess());
        } on FirebaseAuthException catch (e) {
          log(e.code);
          if (e.code == 'user-not-found') {
            emit(AuthFailed(errMessage: 'No user found for this email.'));
          } else if (e.code == 'wrong-password') {
            emit(AuthFailed(
                errMessage:
                    'Wrong password, please enter the correct password'));
          } else if (e.code == 'invalid-email') {
            emit(AuthFailed(errMessage: 'The email address is not valid.'));
          } else if (e.code == 'user-disabled') {
            emit(AuthFailed(errMessage: 'The user account has been disabled.'));
          } else {
            emit(AuthFailed(errMessage: 'Something went wrong.'));
          }
        }
      } else if (event is RegisterEvent) {
        emit(AuthLoading());
        try {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          emit(AuthSuccess());
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            emit(AuthFailed(errMessage: 'The password provided is too weak.'));
          } else if (e.code == 'invalid-email') {
            emit(AuthFailed(errMessage: 'The email address is not valid.'));
          } else if (e.code == 'email-already-in-use') {
            emit(AuthFailed(
                errMessage: 'The account already exists for that email.'));
          } else {
            emit(AuthFailed(errMessage: 'Something went wrong.'));
          }
        }
      }
    });
  }
}
