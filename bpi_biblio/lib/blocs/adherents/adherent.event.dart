abstract class AdherentEvent{}

class LoadAllAdherentsEvent extends AdherentEvent{}

class DeleteAdherentEvent extends AdherentEvent{
  int id;

  DeleteAdherentEvent(this.id);
}

