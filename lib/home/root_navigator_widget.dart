import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/photos_bloc.dart';
import 'package:morty_api/characters/character_card_screen.dart';
import 'package:morty_api/characters/photos_list_screen.dart';
import 'package:morty_api/di/injection_container.dart';
import 'package:morty_api/network/model/characters/page_model.dart';

Map<String, Function> _navigatorRoutes = {
  CharactersListScreen.path: (args) => CharactersListScreen.get(args),
  CharacterCardScreen.path: (args) => CharacterCardScreen.get(args),
};

class RootNavigatorWidget extends StatelessWidget {
  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'rootNavigatorKey');

  final _heroController = HeroController();

  RootNavigatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt.isReady<PhotosBloc>(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          return snapshot.hasData
              ? _buildRootNavigator(context)
              : const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
        });
  }

  Widget _buildRootNavigator(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<PhotosBloc>()
            ..add(const PhotosEvent.fetchPhotos(
                pageModel: PageModel.firstPage())),
        ),
      ],
      child: WillPopScope(
        onWillPop: () async {
          var canPop = await _rootNavigatorKey.currentState?.maybePop();

          return !(canPop ?? false);
        },
        child: Navigator(
          key: _rootNavigatorKey,
          observers: [_heroController],
          onGenerateRoute: _onGenerateRoute,
        ),
      ),
    );
  }

  Route _onGenerateRoute(RouteSettings settings) {
    final builder = _navigatorRoutes.containsKey(settings.name)
        ? _navigatorRoutes[settings.name]!(settings.arguments)
        : initialRouteBuilder;

    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }

  Function get initialRouteBuilder => CharactersListScreen.get(null);
}
