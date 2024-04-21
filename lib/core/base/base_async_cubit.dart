import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/core/error/network_exceptions.dart';
part 'base_async_cubit.freezed.dart';

@freezed
class AsyncValue<T> with _$AsyncValue<T> {
  const factory AsyncValue.initial({T? data}) = _AsyncInitial<T>;
  const factory AsyncValue.loading({T? data}) = _AsyncLoading<T>;
  const factory AsyncValue.data({required T data}) = _AsyncData<T>;
  const factory AsyncValue.error({T? data, required String message}) =
      _AsyncError<T>;
}

extension AsyncValueX<T> on AsyncValue<T> {
  bool get isLoading => this is _AsyncLoading<T>;
}

abstract class BaseAsyncCubit<T> extends Cubit<AsyncValue<T>> {
  BaseAsyncCubit() : super(const AsyncValue.initial());

  Future<void> runguarded(Future<T> Function() future) async {
    try {
      emit(AsyncValue.data(data: await future())); //success
    } on NetworkException catch (err) {
      emit(AsyncValue.error(
        data: state.data,
        message: err.message,
      ));
    }
  }
  
}
