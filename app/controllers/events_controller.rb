class EventsController < ApplicationController
  before_action :set_event, only: %i[ show edit update destroy ]

  # GET /events or /events.json
  def index
    events = Event.all
    render json: events
  end

  # GET /events/1 or /events/1.json
  def show
  end

  # GET /events/new
  def new
    event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events or /events.json
  def create
    event = Event.create(event_params)
    render json: event
  end

  # PATCH/PUT /events/1 or /events/1.json
  def update
    event = Event.find(params[:id])
    event.update(event_params)
    render json: event
  end

  # DELETE /events/1 or /events/1.json
  def destroy
    event = Event.find(params[:id])
    event.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :description, :meeting_time, :location, :duration, :id, :created_at, :updated_at)
    end
end
