import 'package:bpi_biblio/UI/widgets/adherentList.dart';
import 'package:bpi_biblio/UI/widgets/warning.dart';
import 'package:bpi_biblio/blocs/adherents/adherent.bloc.dart';
import 'package:bpi_biblio/blocs/adherents/adherent.state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/request_state.dart';

class AdherentsPage extends StatelessWidget {
  const AdherentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("BPI Adherents"),
    centerTitle: true,
    ),
    body: Column(
    children: [
      SizedBox(height: 20, width: 20,),
    Text("Liste des Adherents enregistrés",
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 25,
          letterSpacing: 5,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          backgroundColor: Colors.blueGrey
      ),
    ),
      SizedBox(height: 20, width: 20,),
      BlocBuilder<AdherentBloc, AdherentState>(
          builder: (context, state) {
            if(state.requestState == RequestState.LOADED){
              return Expanded(
                child: AdherentsList(state.adherents),
              );
            }
            else {
              return Warning("AUCUN ADHERENT ENREGISTRE");
            }

          }),
    ],
    )
    );
  }
}
