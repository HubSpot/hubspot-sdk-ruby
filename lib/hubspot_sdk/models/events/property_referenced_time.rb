# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class PropertyReferencedTime < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute property
        #
        #   @return [String]
        required :property, String

        # @!attribute reference_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::PropertyReferencedTime::ReferenceType]
        required :reference_type,
                 enum: -> { HubSpotSDK::Events::PropertyReferencedTime::ReferenceType },
                 api_name: :referenceType

        # @!attribute time_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::PropertyReferencedTime::TimeType]
        required :time_type,
                 enum: -> { HubSpotSDK::Events::PropertyReferencedTime::TimeType },
                 api_name: :timeType

        # @!attribute timezone_source
        #
        #   @return [Symbol, HubSpotSDK::Models::Events::PropertyReferencedTime::TimezoneSource]
        required :timezone_source,
                 enum: -> { HubSpotSDK::Events::PropertyReferencedTime::TimezoneSource },
                 api_name: :timezoneSource

        # @!attribute zone_id
        #
        #   @return [String]
        required :zone_id, String, api_name: :zoneId

        # @!method initialize(property:, reference_type:, time_type:, timezone_source:, zone_id:)
        #   @param property [String]
        #   @param reference_type [Symbol, HubSpotSDK::Models::Events::PropertyReferencedTime::ReferenceType]
        #   @param time_type [Symbol, HubSpotSDK::Models::Events::PropertyReferencedTime::TimeType]
        #   @param timezone_source [Symbol, HubSpotSDK::Models::Events::PropertyReferencedTime::TimezoneSource]
        #   @param zone_id [String]

        # @see HubSpotSDK::Models::Events::PropertyReferencedTime#reference_type
        module ReferenceType
          extend HubSpotSDK::Internal::Type::Enum

          ANNIVERSARY = :ANNIVERSARY
          ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION = :ANNIVERSARY_WITH_ZONE_SAME_LOCAL_CONVERSION
          UPDATED_AT = :UPDATED_AT
          VALUE = :VALUE
          VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION = :VALUE_WITH_ZONE_SAME_LOCAL_CONVERSION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::PropertyReferencedTime#time_type
        module TimeType
          extend HubSpotSDK::Internal::Type::Enum

          PROPERTY_REFERENCED = :PROPERTY_REFERENCED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubSpotSDK::Models::Events::PropertyReferencedTime#timezone_source
        module TimezoneSource
          extend HubSpotSDK::Internal::Type::Enum

          CUSTOM = :CUSTOM
          PORTAL = :PORTAL
          USER = :USER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
