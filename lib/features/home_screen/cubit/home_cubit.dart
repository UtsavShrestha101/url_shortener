// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:myapp/core/error/network_exceptions.dart';
import 'package:myapp/core/services/restapi/enum.dart';
import 'package:myapp/core/services/restapi/generated_url.dart';
import 'package:myapp/core/services/restapi/restapi.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final RestApiService restApiService;
  HomeCubit(this.restApiService) : super(const HomeState());

  Future<void> search(String url) async {
    emit(
      state.copyWith(
        status: ApiRequestStates.loading,
        generatedUrl: "",
      ),
    );
    try {
      request() => restApiService.generateLink({"destination": url});
      GeneratorDetailEntity generatorDetailEntity =
          await makeDioRequest(request);
      emit(
        state.copyWith(
          status: ApiRequestStates.success,
          generatedUrl: generatorDetailEntity.shortUrl,
        ),
      );
    } on NetworkException catch (_) {
      emit(
        state.copyWith(
          status: ApiRequestStates.error,
        ),
      );
    }
  }
}
