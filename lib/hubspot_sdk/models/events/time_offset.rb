# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class TimeOffset < HubspotSDK::Internal::Type::BaseModel
        # @!attribute amount
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute offset_direction
        #
        #   @return [Symbol, HubspotSDK::Models::Events::TimeOffset::OffsetDirection]
        required :offset_direction,
                 enum: -> { HubspotSDK::Events::TimeOffset::OffsetDirection },
                 api_name: :offsetDirection

        # @!attribute time_unit
        #
        #   @return [Symbol, HubspotSDK::Models::Events::TimeOffset::TimeUnit]
        required :time_unit, enum: -> { HubspotSDK::Events::TimeOffset::TimeUnit }, api_name: :timeUnit

        # @!method initialize(amount:, offset_direction:, time_unit:)
        #   @param amount [Integer]
        #   @param offset_direction [Symbol, HubspotSDK::Models::Events::TimeOffset::OffsetDirection]
        #   @param time_unit [Symbol, HubspotSDK::Models::Events::TimeOffset::TimeUnit]

        # @see HubspotSDK::Models::Events::TimeOffset#offset_direction
        module OffsetDirection
          extend HubspotSDK::Internal::Type::Enum

          FUTURE = :FUTURE
          PAST = :PAST

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::TimeOffset#time_unit
        module TimeUnit
          extend HubspotSDK::Internal::Type::Enum

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
