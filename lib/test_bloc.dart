import 'package:bloc/bloc.dart';

class BaseBlocState {}

class InitTestState extends BaseBlocState {
  @override
  String toString() {
    return 'InitTestState';
  }
}

class FirstTestState extends BaseBlocState {
  @override
  String toString() {
    return 'FirstTestState';
  }
}

class SecondTestState extends BaseBlocState {
  @override
  String toString() {
    return 'SecondTestState';
  }
}

class BaseBlocEvent {}

class FirstTestEvent extends BaseBlocEvent {
  @override
  String toString() {
    return 'FirstTestState';
  }
}

class SecondTestEvent extends BaseBlocEvent {
  @override
  String toString() {
    return 'SecondTestState';
  }
}


class MyTestBloc extends Bloc<BaseBlocEvent, BaseBlocState> {
  @override
  BaseBlocState get initialState => InitTestState();

  @override
  Stream<BaseBlocState> mapEventToState(BaseBlocEvent event) async* {
    if (event is FirstTestEvent) {
      yield FirstTestState();
      yield FirstTestState();
    } else if (event is SecondTestEvent) {
      yield SecondTestState();
      yield SecondTestState();
    }
  }
}