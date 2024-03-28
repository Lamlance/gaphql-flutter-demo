import 'package:demo_flutter_graphql/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MainApp extends StatelessWidget {
  final ValueNotifier<GraphQLClient> client;

  const MainApp({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return GraphQLProvider(
      client: client,
      child: CacheProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
            restorationScopeId: 'app',
            theme: ThemeData(
              primarySwatch: Colors.blueGrey,
              visualDensity: VisualDensity.adaptivePlatformDensity, 
              textTheme:theme,
              appBarTheme: const AppBarTheme(
                iconTheme:IconThemeData(color:Colors.black87),
              )),
            darkTheme: ThemeData.dark(),
            onGenerateRoute: (RouteSettings routeSettings) {
              return MaterialPageRoute<void>(
                settings: routeSettings,
                builder: (BuildContext context) {
                  return const HomeScreen();
                },
              );
            }),
      ),
    );
  }
}
