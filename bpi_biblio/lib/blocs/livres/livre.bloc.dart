import 'package:bpi_biblio/repositories/LivreRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/livre.dart';
import '../request_state.dart';
import 'livre.event.dart';
import 'livre.state.dart';


class LivreBloc extends Bloc<LivreEvent, LivreState>{
  LivreRepository livreRepository;
  List<Livre> data = [];
  LivreBloc(LivreState initialState, this.livreRepository) : super(initialState){
    on((event, emit) => {
      if(event is LoadAllLivresEvent){
        this. data = this.livreRepository.allLivres(),
        emit(new LivreState(Livres: data, requestState: RequestState.LOADED, errorMsg: ""))
      }
      else if(event is LoadLivresByKeyEvent){
        print("------------"+event.key),
        this. data = this.livreRepository.findLivres(event.key),
        emit(new LivreState(Livres: data, requestState: RequestState.LOADED, errorMsg: ""))
        
      }
      else if(event is DeleteLivreEvent){
          this.livreRepository.deleteLivre(event.id),
          this. data = this.livreRepository.allLivres(),
          emit(new LivreState(Livres: data, requestState: RequestState.LOADED, errorMsg: ""))
        }
    });

  }

}