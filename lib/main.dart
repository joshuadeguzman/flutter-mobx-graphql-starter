import 'package:flutter/material.dart';
import 'package:flutter_mobx_graphql/router.dart';
import 'package:flutter_mobx_graphql/screens/artists/stores/artists.store.dart';
import 'package:flutter_mobx_graphql/screens/search/search.screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  /// Add declarations here

  @override
  void initState() {
    /// Add initialisations here
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          // TODO: Provide [SpotifyApiRepository] here
          create: (_) => ArtistsStore(null),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme.copyWith(
                  headline2: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  headline4: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  bodyText1: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ).copyWith(),
        ),
        onGenerateRoute: (settings) => Router.onGenerateRoute(settings),
        initialRoute: SearchScreen.routeName,
      ),
    );
  }
}
