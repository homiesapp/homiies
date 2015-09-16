class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.all.where(event_id: params[:event_id])
    render json: @suggestions, status: :ok
  end
  def vote
    @suggestion = Suggestion.find(params[:id])
    vote = Vote.create(suggestion_id: @suggestion.id, user_id: params[:user_id], status: param[:status])
    @suggestion.vote_counter += 1 if vote.status === 1
    @suggestion.save!
    vote.save!

    @event = @suggestion.event
    num_invitees = Event.find(@suggest.event_id).count(:invitee)
     if @suggestion.vote_counter >= num_invitees
       
     end
  end
end
