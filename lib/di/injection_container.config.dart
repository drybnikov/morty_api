// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:morty_api/characters/bloc/characters_bloc.dart' as _i9;
import 'package:morty_api/data/user_data_provider_impl.dart' as _i6;
import 'package:morty_api/network/client_provider.dart' as _i3;
import 'package:morty_api/network/repository/characters_repository_impl.dart'
    as _i8;
import 'package:morty_api/network/rest_client_public.dart' as _i4;
import 'package:morty_api/repository/characters_repository.dart' as _i7;
import 'package:morty_api/repository/user_data_provider.dart' as _i5;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ClientProvider>(() => _i3.ClientProvider()..initDio());
    gh.lazySingleton<_i4.RestClientPublic>(
        () => _i4.RestClientPublic(gh<_i3.ClientProvider>()));
    gh.lazySingletonAsync<_i5.UserDataProvider>(() {
      final i = _i6.UserDataProviderImpl();
      return i.init().then((_) => i);
    });
    gh.factoryAsync<_i7.CharactersRepository>(
        () async => _i8.CharactersRepositoryImpl(
              gh<_i4.RestClientPublic>(),
              await getAsync<_i5.UserDataProvider>(),
            ));
    gh.lazySingletonAsync<_i9.CharactersBloc>(() async =>
        _i9.CharactersBloc(await getAsync<_i7.CharactersRepository>()));
    return this;
  }
}
