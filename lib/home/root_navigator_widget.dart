import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:morty_api/characters/bloc/photos_bloc.dart';
import 'package:morty_api/characters/photo_details_screen.dart';
import 'package:morty_api/characters/photos_list_screen.dart';
import 'package:morty_api/di/injection_container.dart';
import 'package:morty_api/network/model/characters/page_model.dart';

Map<String, Function> _navigatorRoutes = {
  PhotosListScreen.path: (args) => PhotosListScreen.get(args),
  PhotosDetailsScreen.path: (args) => PhotosDetailsScreen.get(args),
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
          if (snapshot.hasData) {
            return _buildRootNavigator(context);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
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

  Function get initialRouteBuilder => PhotosListScreen.get(null);
}
