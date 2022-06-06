import 'package:bpi_biblio/blocs/adherents/adherent.event.dart';
import 'package:bpi_biblio/blocs/request_state.dart';
import 'package:bpi_biblio/models/adherent.dart';
import 'package:bpi_biblio/repositories/AdherentRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'adherent.state.dart';

class AdherentBloc extends Bloc<AdherentEvent, AdherentState>{
  AdherentRepository adherentRepository;
  List<Adherent> data = [];
  AdherentBloc(AdherentState initialState, this.adherentRepository) : super(initialState){
    on((event, emit) => {
      if(event is LoadAllAdherentsEvent){
         this. data = this.adherentRepository.allAdherents(),
        emit(new AdherentState(adherents: data, requestState: RequestState.LOADED, errorMsg: ""))
      }
      else if(event is DeleteAdherentEvent){
        print("------------${event.id}"),
        this.adherentRepository.deleteAdherent(event.id),
        this. data = this.adherentRepository.allAdherents(),
        emit(new AdherentState(adherents: data, requestState: RequestState.LOADED, errorMsg: ""))
      }
    });
  }

}