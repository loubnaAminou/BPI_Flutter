import 'package:bpi_biblio/UI/widgets/warning.dart';
import 'package:bpi_biblio/blocs/livres/livre.event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/livres/livre.bloc.dart';
import '../../blocs/livres/livre.state.dart';
import '../../blocs/request_state.dart';
import '../widgets/livresList.dart';

class LivresPage extends StatelessWidget {
  const LivresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Livres de BPI"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Livres de la bibliothèque",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  backgroundColor: Colors.blueGrey
              ),
            ),
            SizedBox(height: 10, width: 10,),
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Search by Title",
                        icon: Icon(Icons.search)
                      ),
                    )
                ),
                IconButton(onPressed: (){
                  context.read<LivreBloc>().add(LoadLivresByKeyEvent(controller.text));
                },
                    icon: Icon(Icons.search))
              ],
            ),
            SizedBox(height: 10, width: 10,),
            BlocBuilder<LivreBloc, LivreState>(
                builder: (context, state) {
                  if(state.requestState == RequestState.LOADED){
                    return Expanded(
                      child: LivresList(state.Livres),
                    );
                  }
                  else {
                    return Warning("AUCUN LIVRE TROUVE");
                  }

                }),
          ],
        ),
      ),
    );
  }
}
