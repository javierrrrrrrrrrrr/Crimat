import 'package:equatable/equatable.dart';

class AuthState extends Equatable{
  final bool onLoading;

  const AuthState({required this.onLoading});

  @override
  
  List<Object?> get props => [onLoading];
}


