import 'package:flutter_bloc/flutter_bloc.dart';

abstract class SafeEmitCubit<State> extends Cubit<State> {
  SafeEmitCubit(super.initialState);

  @override
  void emit(State state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
}
