class ParticipantsController < ApplicationController
  skip_before_action :authenticate_user!

  def new
    @participant = Participant.new
    @participants = Participant.all
    @attendees = @participants.where(participation: "Oui")
  end

  def create
    @participant = Participant.create(participant_params)
    if @participant.save
      @participants = Participant.all
      redirect_to new_participant_path
    else
      @participants = Participant.all
      render :new
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:prenom, :nom, :tel, :participation, :age)
  end
end
