class DuesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_due, only: %i[ show edit update destroy ]

  # GET /dues or /dues.json
  def index
    dues = Due.all
    render json: dues
  end

  # GET /dues/1 or /dues/1.json
  def show
  end

  # GET /dues/new
  def new
    due = Due.new
  end

  # GET /dues/1/edit
  def edit
  end

  # POST /dues or /dues.json
  def create
    due = Due.new(due_params)
    render json: due

  # PATCH/PUT /dues/1 or /dues/1.json
  def update
    due = Due.find(params[:id])
    due.update(event_params)
    render json: due
  end

  # DELETE /dues/1 or /dues/1.json
  def destroy
    due = Due.find(params[:id])
    due.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_due
      @due = Due.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def due_params
      params.require(:due).permit(:purpose, :transaction_date)
    end
  end
end
