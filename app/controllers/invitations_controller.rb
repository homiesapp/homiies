class InvitationsController < ApplicationController
  before_action :set_invitation, only: [:show, :edit, :update, :destroy]

  # GET /invitations
  # GET /invitations.json
  # send all the invitations a user has received
  def index
    @invitations = Invitation.all
    render json: @invitations, status: :ok
  end

  # GET /invitations/1
  # GET /invitations/1.json
  def show
    render json: @invitation, status: :ok
  end

  # GET /invitations/new
  def new
    invitation = Invitation.new
    if invitation.save
      render json: invitation.id, status: :ok
    else
      render nothing: true, status: 403
    end
  end

  # POST /invitations
  # POST /invitations.json
  def create
    @invitation = Invitation.new(invitation_params)

    respond_to do |format|
      if @invitation.save
        format.json { render json: @invitation, status: :created, location: @invitation }
      else
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /invitations/1
  # PATCH/PUT /invitations/1.json
  def update
    respond_to do |format|
      if @invitation.update(invitation_params)
        format.json { render json: @invitation, status: :ok, location: @invitation }
      else
        format.json { render json: @invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invitations/1
  # DELETE /invitations/1.json
  def destroy
    @invitation.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invitation
      @invitation = Invitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def invitation_params
      params.require(:invitation).permit(:inviter_id, :invitee_id, :event_id, :status)
    end
end
