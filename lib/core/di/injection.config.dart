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

import '../../features/discover/data/repository/anime_repository_impl.dart'
    as _i6;
import '../../features/discover/domain/domain.dart' as _i5;
import '../../features/discover/domain/repository/anime_repository.dart' as _i9;
import '../../features/discover/domain/usecases/get_animes_use_case.dart'
    as _i8;
import '../../features/discover/presentation/cubit/anime/anime_cubit.dart'
    as _i10;
import '../adapters/network_adapter.dart' as _i4;
import '../core.dart' as _i7;
import 'injection.dart' as _i11;

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
    gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.NetworkAdapter>(() => _i4.NetworkAdapterImpl(gh<_i3.Dio>()));
    gh.factory<_i5.AnimeRepository>(
        () => _i6.AnimeRepositoryImpl(gh<_i7.NetworkAdapter>()));
    gh.factory<_i8.GetAnimeUseCase>(
        () => _i8.GetAnimeUseCaseImpl(gh<_i9.AnimeRepository>()));
    gh.factory<_i10.AnimeCubit>(
        () => _i10.AnimeCubit(getAnimeUseCase: gh<_i8.GetAnimeUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i11.RegisterModule {}
