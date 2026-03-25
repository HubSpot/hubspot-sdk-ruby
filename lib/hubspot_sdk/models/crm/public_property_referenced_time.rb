# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicPropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property
        #   Specifies the name of the property that the time reference is applied to.
        #
        #   @return [String]
        required :property, String

        # @!attribute reference_type
        #   Specifies the type of reference for the property (VALUE, UPDATED_AT,
        #   ANNIVERSARY, VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION,
        #   ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION).
        #
        #   @return [String]
        required :reference_type, String, api_name: :referenceType

        # @!attribute time_type
        #   Defines the type of time (PROPERTY_REFERENCED).
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicPropertyReferencedTime::TimeType]
        required :time_type,
                 enum: -> { HubspotSDK::Crm::PublicPropertyReferencedTime::TimeType },
                 api_name: :timeType

        # @!attribute zone_id
        #   Indicates the identifier for the time zone associated with the property.
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!attribute timezone_source
        #   Specifies the source of the time zone information for the property (CUSTOM,
        #   USER, PORTAL).
        #
        #   @return [String, nil]
        optional :timezone_source, String, api_name: :timezoneSource

        # @!method initialize(property:, reference_type:, time_type:, zone_id:, timezone_source: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicPropertyReferencedTime} for more details.
        #
        #   @param property [String] Specifies the name of the property that the time reference is applied to.
        #
        #   @param reference_type [String] Specifies the type of reference for the property (VALUE, UPDATED_AT, ANNIVERSARY
        #
        #   @param time_type [Symbol, HubspotSDK::Models::Crm::PublicPropertyReferencedTime::TimeType] Defines the type of time (PROPERTY_REFERENCED).
        #
        #   @param zone_id [String] Indicates the identifier for the time zone associated with the property.
        #
        #   @param timezone_source [String] Specifies the source of the time zone information for the property (CUSTOM, USER

        # Defines the type of time (PROPERTY_REFERENCED).
        #
        # @see HubspotSDK::Models::Crm::PublicPropertyReferencedTime#time_type
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          PROPERTY_REFERENCED = :PROPERTY_REFERENCED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
