import '../../models/adherent.dart';
import '../request_state.dart';

class AdherentState{
  List<Adherent> adherents;
  RequestState requestState;
  String errorMsg;

  AdherentState({required this.adherents, required this.requestState, required this.errorMsg});
}

