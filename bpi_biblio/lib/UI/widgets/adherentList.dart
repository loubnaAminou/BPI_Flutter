import 'package:bpi_biblio/blocs/adherents/adherent.bloc.dart';
import 'package:bpi_biblio/blocs/adherents/adherent.event.dart';
import 'package:bpi_biblio/models/adherent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdherentsList extends StatelessWidget {
  List<Adherent> adherents;

  AdherentsList(this.adherents);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: adherents.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(adherents[index].nom+" "+adherents[index].prenom),
            leading: CircleAvatar(child: Text(adherents[index].nom.substring(0,1).toUpperCase()+adherents[index].prenom.substring(0,1).toUpperCase())),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                context.read<AdherentBloc>().add(DeleteAdherentEvent(adherents[index].id_adherent));
            },),
          );
        }
    );
  }
}
