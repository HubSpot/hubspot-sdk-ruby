# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticTimeZoneStrategy < HubspotSDK::Internal::Type::BaseModel
        # @!attribute time_zone_id
        #
        #   @return [String]
        required :time_zone_id, String, api_name: :timeZoneId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticTimeZoneStrategy::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticTimeZoneStrategy::Type }

        # @!method initialize(time_zone_id:, type:)
        #   @param time_zone_id [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticTimeZoneStrategy::Type]

        # @see HubspotSDK::Models::Automation::APIStaticTimeZoneStrategy#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STATIC_TIME_ZONE = :STATIC_TIME_ZONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
