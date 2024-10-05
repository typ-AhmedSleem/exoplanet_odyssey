part of 'auth_bloc.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthFailed extends AuthState {
  final String errMessage;
  AuthFailed({required this.errMessage});
}

final class AuthSuccess extends AuthState {}
