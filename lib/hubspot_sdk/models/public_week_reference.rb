# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicWeekReference < HubspotSDK::Internal::Type::BaseModel
      # @!attribute day_of_week
      #
      #   @return [Symbol, HubspotSDK::Models::PublicWeekReference::DayOfWeek]
      required :day_of_week, enum: -> { HubspotSDK::PublicWeekReference::DayOfWeek }, api_name: :dayOfWeek

      # @!attribute reference_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicWeekReference::ReferenceType]
      required :reference_type,
               enum: -> { HubspotSDK::PublicWeekReference::ReferenceType },
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
      #   @param day_of_week [Symbol, HubspotSDK::Models::PublicWeekReference::DayOfWeek]
      #   @param reference_type [Symbol, HubspotSDK::Models::PublicWeekReference::ReferenceType]
      #   @param hour [Integer]
      #   @param millisecond [Integer]
      #   @param minute [Integer]
      #   @param second [Integer]

      # @see HubspotSDK::Models::PublicWeekReference#day_of_week
      module DayOfWeek
        extend HubspotSDK::Internal::Type::Enum

        MONDAY = :MONDAY
        TUESDAY = :TUESDAY
        WEDNESDAY = :WEDNESDAY
        THURSDAY = :THURSDAY
        FRIDAY = :FRIDAY
        SATURDAY = :SATURDAY
        SUNDAY = :SUNDAY

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see HubspotSDK::Models::PublicWeekReference#reference_type
      module ReferenceType
        extend HubspotSDK::Internal::Type::Enum

        WEEK = :WEEK

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
