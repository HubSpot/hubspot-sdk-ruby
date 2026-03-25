# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class WeekReference < HubspotSDK::Internal::Type::BaseModel
        # @!attribute day_of_week
        #
        #   @return [Symbol, HubspotSDK::Models::Events::WeekReference::DayOfWeek]
        required :day_of_week, enum: -> { HubspotSDK::Events::WeekReference::DayOfWeek }, api_name: :dayOfWeek

        # @!attribute reference_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::WeekReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubspotSDK::Events::WeekReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   @param day_of_week [Symbol, HubspotSDK::Models::Events::WeekReference::DayOfWeek]
        #   @param reference_type [Symbol, HubspotSDK::Models::Events::WeekReference::ReferenceType]
        #   @param hour [Integer]
        #   @param millisecond [Integer]
        #   @param minute [Integer]
        #   @param second [Integer]

        # @see HubspotSDK::Models::Events::WeekReference#day_of_week
        module DayOfWeek
          extend HubspotSDK::Internal::Type::Enum

          FRIDAY = :FRIDAY
          MONDAY = :MONDAY
          SATURDAY = :SATURDAY
          SUNDAY = :SUNDAY
          THURSDAY = :THURSDAY
          TUESDAY = :TUESDAY
          WEDNESDAY = :WEDNESDAY

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::WeekReference#reference_type
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          WEEK = :WEEK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
