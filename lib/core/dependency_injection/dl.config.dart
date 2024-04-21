// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:myapp/core/dependency_injection/dl.dart' as _i6;
import 'package:myapp/core/services/restapi/restapi.dart' as _i4;
import 'package:myapp/features/home_screen/cubit/home_cubit.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(() => registerModule.dio);
    gh.singleton<_i4.RestApiService>(() => _i4.RestApiService(gh<_i3.Dio>()));
    gh.factory<_i5.HomeCubit>(() => _i5.HomeCubit(gh<_i4.RestApiService>()));
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
