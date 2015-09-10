class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    users = User.all
    render json: users, status: 200
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: @user # .to_json(:include => [:events, :invitations, :homiies])
  end

  # GET /users/new
  def new
    user = User.new
    if user.save
      render json: user, status: :ok
    else
      render nothing: true, status: 403
    end
  end

  # GET /users/1/edit
  def edit
    if @user
      render json: @user, status: :ok
    else
      render nothing: true, status: 403
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.json { render json: @user, status: :created, location: @user }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.json { render json: @user, status: :ok, location: @user }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :oauth_token, :oauth_expires_at, :provider, :uid)
    end
end