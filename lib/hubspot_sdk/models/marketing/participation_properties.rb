# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ParticipationProperties < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attendance_state
        #   The state of the participation
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::ParticipationProperties::AttendanceState]
        required :attendance_state,
                 enum: -> { HubspotSDK::Marketing::ParticipationProperties::AttendanceState },
                 api_name: :attendanceState

        # @!attribute occurred_at
        #   Timestamp of when the participation occurred
        #
        #   @return [Integer]
        required :occurred_at, Integer, api_name: :occurredAt

        # @!attribute attendance_duration_seconds
        #   The number of seconds the participation lasted
        #
        #   @return [Integer, nil]
        optional :attendance_duration_seconds, Integer, api_name: :attendanceDurationSeconds

        # @!attribute attendance_percentage
        #   Percentage of the participation duration relative to the event duration
        #
        #   @return [String, nil]
        optional :attendance_percentage, String, api_name: :attendancePercentage

        # @!method initialize(attendance_state:, occurred_at:, attendance_duration_seconds: nil, attendance_percentage: nil)
        #   @param attendance_state [Symbol, HubspotSDK::Models::Marketing::ParticipationProperties::AttendanceState] The state of the participation
        #
        #   @param occurred_at [Integer] Timestamp of when the participation occurred
        #
        #   @param attendance_duration_seconds [Integer] The number of seconds the participation lasted
        #
        #   @param attendance_percentage [String] Percentage of the participation duration relative to the event duration

        # The state of the participation
        #
        # @see HubspotSDK::Models::Marketing::ParticipationProperties#attendance_state
        module AttendanceState
          extend HubspotSDK::Internal::Type::Enum

          ATTENDED = :ATTENDED
          CANCELLED = :CANCELLED
          EMPTY = :EMPTY
          NO_SHOW = :NO_SHOW
          REGISTERED = :REGISTERED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
