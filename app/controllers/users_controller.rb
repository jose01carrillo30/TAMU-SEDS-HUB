class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
  def index
    @users = User.all
    render json: @users
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    render json: @user
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)
    render json: @user
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    @user.update(user_params)
    render json: @user
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :pronouns, :classification, :major, :phone_number)
    end
end
