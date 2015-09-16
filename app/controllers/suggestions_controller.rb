class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.all.where(event_id: params[:event_id])
    render json: @suggestions, status: :ok
  end
  
  def vote
    @suggestion = Suggestion.find(params[:id])
    @vote = Vote.create(suggestion_id: @suggestion.id, user_id: params[:user_id], status: param[:status])
    @suggestion.vote_counter += 1 if params[:status] === 1
    @suggestion.save!
    @vote.save!

    @event = Event.find(@suggestion.event_id)
    num_invitees = @event.count(:invitee)
    if @suggestion.vote_counter >= (num_invitees * 0.75) 
      @event.title = @suggestion.title
      @event.picture = @suggestion.photo_req
      @event.lat = @suggestion.lat
      @event.long = @suggestion.long
      @event.category = @suggestion.type_place
      @event.web_url = @suggestion.web_url
      @event.save!
    end
  end

  def votes
    @votes = Vote.find_by(suggestion_id: params[:id])
    render json: @votes, status: :ok
  end
end
