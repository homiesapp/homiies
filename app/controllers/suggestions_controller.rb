class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.joins(:votes).where(event_id: 1).where(:votes => {:status => 2, :user_id => params[:user_id]})
    render json: @suggestions, status: :ok
  end
  
  def vote
    @suggestion = Suggestion.find(params[:id])
    @vote = Vote.find_by(suggestion_id: @suggestion.id, user_id: params[:user_id])
    @vote.status = params[:status]
    # @suggestion.vote_counter += 1 if params[:status].to_i == 1
    @suggestion.vote_counter += 1 if @vote.status == 1
    @suggestion.save!
    @vote.save!
    # @event = Event.find(@suggestion.event_id)
    # binding.pry
    # num_invitees = @event.invitees.length
    # if @suggestion.vote_counter >= (num_invitees * 0.75) 
    #   @event.title = @suggestion.title
    #   @event.picture = @suggestion.photo_req
    #   @event.lat = @suggestion.lat
    #   @event.long = @suggestion.long
    #   @event.category = @suggestion.type_place
    #   @event.web_url = @suggestion.web_url
    #   @event.save!
    # end
  end

  def votes_index
    @suggestions = Suggestion.where(event_id: params[:id])
    suggestion_ids = []
    @votes = []
    @suggestions.each do |suggestion|
      suggestion_ids << suggestion.id 
    end

    suggestion_ids.each do |i|
      @votes << Vote.where(suggestion_id: i)
    end
    binding.pry
    

    render json: @votes, status: :ok
  end
end
