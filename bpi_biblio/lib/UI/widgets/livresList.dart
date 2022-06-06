import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/livres/livre.bloc.dart';
import '../../blocs/livres/livre.event.dart';
import '../../models/livre.dart';

class LivresList extends StatelessWidget {
  List<Livre> livres;

  LivresList(this.livres);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: livres.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(child: Text('${livres[index].nb_exemplaires}'), backgroundColor: Colors.deepPurple,),
            title: Text(livres[index].titre+" \$${livres[index].prix}"),
            subtitle: Text(
              "Written By : "+livres[index].auteur+" In ${livres[index].annee_publication.day}/${livres[index].annee_publication.month}/${livres[index].annee_publication.year}"
            ),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                context.read<LivreBloc>().add(DeleteLivreEvent(livres[index].id_livre));
              },
            ),
          );
        }
    );
  }
}
