# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ParticipationProperties < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attendance_state
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::ParticipationProperties::AttendanceState]
        required :attendance_state,
                 enum: -> { HubspotSDK::Marketing::ParticipationProperties::AttendanceState },
                 api_name: :attendanceState

        # @!attribute occurred_at
        #
        #   @return [Integer]
        required :occurred_at, Integer, api_name: :occurredAt

        # @!attribute attendance_duration_seconds
        #
        #   @return [Integer, nil]
        optional :attendance_duration_seconds, Integer, api_name: :attendanceDurationSeconds

        # @!attribute attendance_percentage
        #
        #   @return [String, nil]
        optional :attendance_percentage, String, api_name: :attendancePercentage

        # @!method initialize(attendance_state:, occurred_at:, attendance_duration_seconds: nil, attendance_percentage: nil)
        #   @param attendance_state [Symbol, HubspotSDK::Models::Marketing::ParticipationProperties::AttendanceState]
        #   @param occurred_at [Integer]
        #   @param attendance_duration_seconds [Integer]
        #   @param attendance_percentage [String]

        # @see HubspotSDK::Models::Marketing::ParticipationProperties#attendance_state
        module AttendanceState
          extend HubspotSDK::Internal::Type::Enum

          REGISTERED = :REGISTERED
          ATTENDED = :ATTENDED
          CANCELLED = :CANCELLED
          EMPTY = :EMPTY
          NO_SHOW = :NO_SHOW

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
