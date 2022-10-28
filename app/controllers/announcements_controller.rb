class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: %i[ show edit update destroy ]

  # GET /announcements or /announcements.json
  def index
    @announcements = Announcement.all
    render json: @announcements
  end

  # GET /announcements/1 or /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
    render json: @announcement
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements or /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)
    render json: @announcement
  end

  # PATCH/PUT /announcements/1 or /announcements/1.json
  def update
    @announcement = Announcement.update(event_params)
    render json: @announcement
  end

  # DELETE /announcements/1 or /announcements/1.json
  def destroy
    @announcement.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def announcement_params
      params.require(:announcement).permit(:send_time, :title, :category, :contents)
    end
end
