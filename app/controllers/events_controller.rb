require 'open-uri'

class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    res = {}
    user = User.find(params[:user_id])

    events_admin = user.events.to_a.keep_if { |event| event.time > Time.now }.sort!
    events_pending = Invitation.where(invitee_id: user.id).where(status: 2).map { |invite| Event.find(invite.event_id) }
    events_attending = Invitation.where(invitee_id: user.id).where(status: 1).map { |invite| Event.find(invite.event_id) }

    res[:events_admin] = events_admin
    res[:events_pending] = events_pending
    res[:events_attending] = events_attending

    render json: res, status: :ok
  end

  # GET /events/1
  # GET /events/1.json
  def show
    res = {}
    homiies_attending = @event.invitations.where(status: 1).map { |invite| invite.invitee }
    homiies_pending = @event.invitations.where(status: 2).map { |invite| invite.invitee }

    res[:event] = @event
    res[:homiies_attending] = homiies_attending
    res[:homiies_pending] = homiies_pending
    render json: res, status: :ok
  end

  # GET /events/new
  def new
    @event = Event.new
    if @event.save
      render json: @event.id, status: :ok
    else
      render nothing: true, status: 403
    end
  end

  # GET /events/1/edit
  def edit
    if @event
      render json: @event, status: :ok
    else
      render nothing: true, status: 403
    end 
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.json { render json: @event, status: :created, location: @event }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.json { render json: @event, status: :ok, location: @event }
      else
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  #suggest
  def suggest
    #location latitude, longitude
    #type string
    #open now boolean
    #radius int

    url = 'https://maps.googleapis.com/maps/api/place/nearbysearch/json?'
    api_params = {
      key: "AIzaSyCu_MX9ojL43aD69qCc8KdRri3QgQCe6fY",
      location: "49.281887,-123.1207",
      type: "bar&restaraunt",
      opennow: "true",
      radius: "1000",
    }

    url_params = api_params.map{|key,value| "#{key}=#{value}"}.join('&')

    url << url_params
    
    res = JSON.load(open(url))
    render json: res
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :city, :country, :address, :postal_code, :time, :description, :picture, :lat, :long, :category, :user_id)
    end
end

