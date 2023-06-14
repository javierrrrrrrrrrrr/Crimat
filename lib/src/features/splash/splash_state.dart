import 'package:equatable/equatable.dart';

class SplashState extends Equatable{
  SplashStatus status;
  String? error;

  SplashState._({required this.status, this.error});

  SplashState.loading(): this._(status: SplashStatus.loading);
  SplashState.onError(error) : this._(status: SplashStatus.onError, error: error);
  SplashState.onSuccess(): this._(status: SplashStatus.onSuccess);


  @override
  List<Object> get props => [status, error ?? ''];

}

enum SplashStatus{loading, onSuccess, onError}