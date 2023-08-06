// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i9;
import '../../../application/fast_laught/fast_laught_bloc.dart' as _i10;
import '../../../application/home/home_bloc.dart' as _i11;
import '../../../application/new_and_hot/new_and_hot_bloc.dart' as _i12;
import '../../../application/search/search_bloc.dart' as _i13;
import '../../../infrasatrutuer/downloads/downloads_repository.dart' as _i4;
import '../../../infrasatrutuer/new_and_hot/new_and_hot_impl.dart' as _i6;
import '../../../infrasatrutuer/search/search_impl.dart' as _i8;
import '../../downloads/i_download_repo.dart' as _i3;
import '../../new_and_hot/new_and_hot_service.dart' as _i5;
import '../../search/search_servies.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IDownloadRepo>(() => _i4.DownloadsRepository());
  gh.lazySingleton<_i5.NewAndHotService>(() => _i6.NewAndHotImplimantion());
  gh.lazySingleton<_i7.SearchServies>(() => _i8.SearchImpl());
  gh.factory<_i9.DownloadsBloc>(
      () => _i9.DownloadsBloc(get<_i3.IDownloadRepo>()));
  gh.factory<_i10.FastLaughtBloc>(
      () => _i10.FastLaughtBloc(get<_i3.IDownloadRepo>()));
  gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(get<_i5.NewAndHotService>()));
  gh.factory<_i12.NewAndHotBloc>(
      () => _i12.NewAndHotBloc(get<_i5.NewAndHotService>()));
  gh.factory<_i13.SearchBloc>(() => _i13.SearchBloc(
        get<_i7.SearchServies>(),
        get<_i3.IDownloadRepo>(),
      ));
  return get;
}
