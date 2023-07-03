import 'package:equatable/equatable.dart';

class SplashState extends Equatable {
  final SplashStatus status;
  final String? error;

  const SplashState._({required this.status, this.error});

  const SplashState.loading() : this._(status: SplashStatus.loading);
  const SplashState.onError(error)
      : this._(status: SplashStatus.onError, error: error);
  const SplashState.onSuccess() : this._(status: SplashStatus.onSuccess);

  @override
  List<Object> get props => [status, error ?? ''];
}

enum SplashStatus { loading, onSuccess, onError }
