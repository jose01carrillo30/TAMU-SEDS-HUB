class AttendanceRecordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_attendance_record, only: %i[ show edit update destroy ]

  # GET /attendance_records or /attendance_records.json
  def index
    @attendance_records = AttendanceRecord.all
    render json: @attendance_record
  end

  # GET /attendance_records/1 or /attendance_records/1.json
  def show
  end

  # GET /attendance_records/new
  def new
    @attendance_record = AttendanceRecord.new
    render json: @event
  end

  # GET /attendance_records/1/edit
  def edit
  end

  # POST /attendance_records or /attendance_records.json
  def create
    @attendance_record = AttendanceRecord.new(attendance_record_params)
    render json: @attendance_record
  end

  # PATCH/PUT /attendance_records/1 or /attendance_records/1.json
  def update
    @attendance_record = AttendanceRecord.update(attendance_record_params)
    render json: @attendance_record
  end

  # DELETE /attendance_records/1 or /attendance_records/1.json
  def destroy
    @attendance_record.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance_record
      @attendance_record = AttendanceRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attendance_record_params
      params.require(:attendance_record).permit(:arrival_time)
    end
end
