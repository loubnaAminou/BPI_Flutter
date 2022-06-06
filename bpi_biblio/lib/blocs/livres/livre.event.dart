abstract class LivreEvent{}

class LoadAllLivresEvent extends LivreEvent{}

class LoadLivresByKeyEvent extends LivreEvent{
  String key;
  LoadLivresByKeyEvent(this.key);

}

class DeleteLivreEvent extends LivreEvent{
  int id;
  DeleteLivreEvent(this.id);
}