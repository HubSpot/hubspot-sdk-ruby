# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicWeekReference < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute day_of_week
        #   The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
        #   SATURDAY).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicWeekReference::DayOfWeek]
        required :day_of_week,
                 enum: -> {
                   HubSpotSDK::Crm::PublicWeekReference::DayOfWeek
                 },
                 api_name: :dayOfWeek

        # @!attribute reference_type
        #   Indicates the type of reference (WEEK).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicWeekReference::ReferenceType]
        required :reference_type,
                 enum: -> { HubSpotSDK::Crm::PublicWeekReference::ReferenceType },
                 api_name: :referenceType

        # @!attribute hour
        #   The hour component of the week reference.
        #
        #   @return [Integer, nil]
        optional :hour, Integer

        # @!attribute millisecond
        #   The millisecond component of the week reference.
        #
        #   @return [Integer, nil]
        optional :millisecond, Integer

        # @!attribute minute
        #   The minute component of the week reference.
        #
        #   @return [Integer, nil]
        optional :minute, Integer

        # @!attribute second
        #   The second component of the week reference.
        #
        #   @return [Integer, nil]
        optional :second, Integer

        # @!method initialize(day_of_week:, reference_type:, hour: nil, millisecond: nil, minute: nil, second: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicWeekReference} for more details.
        #
        #   @param day_of_week [Symbol, HubSpotSDK::Models::Crm::PublicWeekReference::DayOfWeek] The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATUR
        #
        #   @param reference_type [Symbol, HubSpotSDK::Models::Crm::PublicWeekReference::ReferenceType] Indicates the type of reference (WEEK).
        #
        #   @param hour [Integer] The hour component of the week reference.
        #
        #   @param millisecond [Integer] The millisecond component of the week reference.
        #
        #   @param minute [Integer] The minute component of the week reference.
        #
        #   @param second [Integer] The second component of the week reference.

        # The day of the week (SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY,
        # SATURDAY).
        #
        # @see HubSpotSDK::Models::Crm::PublicWeekReference#day_of_week
        module DayOfWeek
          extend HubSpotSDK::Internal::Type::Enum

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

        # Indicates the type of reference (WEEK).
        #
        # @see HubSpotSDK::Models::Crm::PublicWeekReference#reference_type
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          WEEK = :WEEK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
