class OfficesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_office, only: %i[ show edit update destroy ]

  # GET /offices or /offices.json
  def index
    @offices = Office.all
    render json: @offices
  end

  # GET /offices/1 or /offices/1.json
  def show
  end

  # GET /offices/new
  def new
    @office = Office.new
    render json: @office
  end

  # GET /offices/1/edit
  def edit
  end

  # POST /offices or /offices.json
  def create
    @office = Office.new(office_params)
    render json: @office
  end

  # PATCH/PUT /offices/1 or /offices/1.json
  def update
    @office = Office.update(office_params)
    render json: @office
  end

  # DELETE /offices/1 or /offices/1.json
  def destroy
    @office.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office
      @office = Office.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def office_params
      params.require(:office).permit(:title, :permissions)
    end
end
