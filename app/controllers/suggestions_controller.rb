class SuggestionsController < ApplicationController
  def index
    @suggestions = Suggestion.all.where(event_id: params[:event_id])
    render json: @suggestions, status: :ok
  end
  def vote
    @suggestion = Suggestion.find(?)
    vote = Vote.create(suggestion_id: @suggestion.id, user_id: , upvote: )
    @suggestion.votes += 1 if vote.upvote
    vote.save!
  end
end
