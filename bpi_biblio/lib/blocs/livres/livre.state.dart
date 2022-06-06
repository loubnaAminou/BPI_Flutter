
import '../../models/livre.dart';
import '../request_state.dart';

class LivreState{
  List<Livre> Livres;
  RequestState requestState;
  String errorMsg;

  LivreState({required this.Livres, required  this.requestState, required this.errorMsg});
}