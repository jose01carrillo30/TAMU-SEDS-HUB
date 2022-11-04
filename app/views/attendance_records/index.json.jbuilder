# frozen_string_literal: true

json.array! @attendance_records, partial: 'attendance_records/attendance_record', as: :attendance_record
