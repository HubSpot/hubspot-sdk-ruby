# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class PropertyReferencedTime < HubspotSDK::Internal::Type::BaseModel
        # @!attribute property
        #
        #   @return [String]
        required :property, String

        # @!attribute reference_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::PropertyReferencedTime::ReferenceType]
        required :reference_type,
                 enum: -> { HubspotSDK::Events::PropertyReferencedTime::ReferenceType },
                 api_name: :referenceType

        # @!attribute time_type
        #
        #   @return [Symbol, HubspotSDK::Models::Events::PropertyReferencedTime::TimeType]
        required :time_type,
                 enum: -> { HubspotSDK::Events::PropertyReferencedTime::TimeType },
                 api_name: :timeType

        # @!attribute timezone_source
        #
        #   @return [Symbol, HubspotSDK::Models::Events::PropertyReferencedTime::TimezoneSource]
        required :timezone_source,
                 enum: -> { HubspotSDK::Events::PropertyReferencedTime::TimezoneSource },
                 api_name: :timezoneSource

        # @!attribute zone_id
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
        #   @param property [String]
        #   @param reference_type [Symbol, HubspotSDK::Models::Events::PropertyReferencedTime::ReferenceType]
        #   @param time_type [Symbol, HubspotSDK::Models::Events::PropertyReferencedTime::TimeType]
        #   @param timezone_source [Symbol, HubspotSDK::Models::Events::PropertyReferencedTime::TimezoneSource]
        #   @param zone_id [String]

        # @see HubspotSDK::Models::Events::PropertyReferencedTime#reference_type
        module ReferenceType
          extend HubspotSDK::Internal::Type::Enum

          VALUE = :VALUE
          UPDATED_AT = :UPDATED_AT
          ANNIVERSARY = :ANNIVERSARY
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::PropertyReferencedTime#time_type
        module TimeType
          extend HubspotSDK::Internal::Type::Enum

          PROPERTY_REFERENCED = :PROPERTY_REFERENCED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Events::PropertyReferencedTime#timezone_source
        module TimezoneSource
          extend HubspotSDK::Internal::Type::Enum

          CUSTOM = :CUSTOM
          USER = :USER
          PORTAL = :PORTAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
