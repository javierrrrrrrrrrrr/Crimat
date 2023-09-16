// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

enum SplashStatus { loading, leaded, error }

class SplashState extends Equatable {
  final SplashStatus status;
  final String? error;
  // 1-si hay que mandarlo al ombording
  // 2- no hay que mandarlo al onbording pero debe logarce
  //3-no hay que mostrar ombording ni logerace
  final int? isLogin;

  const SplashState({
    required this.status,
    this.error,
    this.isLogin,
  });

  SplashState copyWith({
    SplashStatus? status,
    String? error,
    int? isLogin,
  }) {
    return SplashState(
      status: status ?? this.status,
      error: error ?? this.error,
      isLogin: isLogin ?? this.isLogin,
    );
  }

  @override
  List<Object?> get props => [status, error, isLogin];
}
