import 'package:bpi_biblio/blocs/adherents/adherent.event.dart';
import 'package:bpi_biblio/blocs/livres/livre.event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/adherents/adherent.bloc.dart';
import '../../blocs/livres/livre.bloc.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Column(
            children: [
              CircleAvatar(
                radius: 55,
                child: ClipRRect(
                  child: Image.asset("icons/icon.png"),
                  borderRadius: BorderRadius.circular(50.0),),
              ),
              Text("Bibliothèque publique"),
            ],
          )
          ),
          SizedBox(height: 10, width: 10,),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
          ),
          ListTile(
            title: Text("Livres"),
            leading: Icon(Icons.book),
              onTap : (){
                context.read<LivreBloc>().add(LoadAllLivresEvent());
                Navigator.pushNamed(context, "/livres");
          }
          ),
          ListTile(
            title: Text("Adherents"),
            leading: Icon(Icons.supervised_user_circle),
              onTap : (){
              context.read<AdherentBloc>().add(LoadAllAdherentsEvent());
                Navigator.pushNamed(context, "/adherents");
          }
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
              onTap : (){
              Navigator.pushNamed(context, "/about");
          }
          ),
        ],
      ),
    );
  }
}
