# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
      # @!attribute property
      #
      #   @return [String]
      required :property, String

      # @!attribute reference_type
      #
      #   @return [String]
      required :reference_type, String, api_name: :referenceType

      # @!attribute time_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicPropertyReferencedTime::TimeType]
      required :time_type,
               enum: -> {
                 HubspotSDK::PublicPropertyReferencedTime::TimeType
               },
               api_name: :timeType

      # @!attribute zone_id
      #
      #   @return [String]
      required :zone_id, String, api_name: :zoneId

      # @!attribute timezone_source
      #
      #   @return [String, nil]
      optional :timezone_source, String, api_name: :timezoneSource

      # @!method initialize(property:, reference_type:, time_type:, zone_id:, timezone_source: nil)
      #   @param property [String]
      #   @param reference_type [String]
      #   @param time_type [Symbol, HubspotSDK::Models::PublicPropertyReferencedTime::TimeType]
      #   @param zone_id [String]
      #   @param timezone_source [String]

      # @see HubspotSDK::Models::PublicPropertyReferencedTime#time_type
      module TimeType
        extend HubspotSDK::Internal::Type::Enum

        PROPERTY_REFERENCED = :PROPERTY_REFERENCED

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
