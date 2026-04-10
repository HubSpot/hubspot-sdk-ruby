# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class TimeOffset < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute offset_direction
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::TimeOffset::OffsetDirection]
        required :offset_direction,
                 enum: -> { HubSpotSDK::Events::TimeOffset::OffsetDirection },
                 api_name: :offsetDirection

        # @!attribute time_unit
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::TimeOffset::TimeUnit]
        required :time_unit, enum: -> { HubSpotSDK::Events::TimeOffset::TimeUnit }, api_name: :timeUnit

        # @!method initialize(amount:, offset_direction:, time_unit:)
        #   @param amount [Integer]
        #   @param offset_direction [Symbol, HubSpotSDK::Models::Events::TimeOffset::OffsetDirection]
        #   @param time_unit [Symbol, HubSpotSDK::Models::Events::TimeOffset::TimeUnit]

        # @see HubSpotSDK::Models::Events::TimeOffset#offset_direction
        module OffsetDirection
          extend HubSpotSDK::Internal::Type::Enum

          FUTURE = :FUTURE
          PAST = :PAST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::TimeOffset#time_unit
        module TimeUnit
          extend HubSpotSDK::Internal::Type::Enum

          DAYS = :DAYS
          HOURS = :HOURS
          MINUTES = :MINUTES
          WEEKS = :WEEKS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
