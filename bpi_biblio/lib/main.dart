import 'package:bpi_biblio/UI/pages/about.dart';
import 'package:bpi_biblio/blocs/livres/livre.state.dart';
import 'package:bpi_biblio/blocs/request_state.dart';
import 'package:bpi_biblio/repositories/AdherentRepository.dart';
import 'package:bpi_biblio/repositories/LivreRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'UI/pages/adherents.dart';
import 'UI/pages/home.dart';
import 'UI/pages/livres.dart';
import 'blocs/adherents/adherent.bloc.dart';
import 'blocs/adherents/adherent.state.dart';
import 'blocs/livres/livre.bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LivreBloc(new LivreState(Livres: [], requestState: RequestState.NONE, errorMsg: ""), LivreRepository())),
        BlocProvider(create: (context) => AdherentBloc(new AdherentState(requestState: RequestState.NONE, errorMsg: "", adherents: []), AdherentRepository())),
      ],
      child: MaterialApp(
        theme : ThemeData(
          primarySwatch: Colors.grey,
          textTheme: TextTheme(
            bodyText1: TextStyle(
                color : Colors.blueGrey,
            fontSize: 20,
            fontWeight: FontWeight.bold)
          )
        ),
        routes: {
          "/" : (context) => HomePage(),
          "/about" : (context) => AboutPage(),
          "/livres" : (context) => LivresPage(),
          "/adherents" : (context) => AdherentsPage(),
        },
      ),
    );
  }
}