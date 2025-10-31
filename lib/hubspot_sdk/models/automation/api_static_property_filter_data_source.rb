# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticPropertyFilterDataSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String, api_name: :propertyName

        # @!attribute static_value
        #
        #   @return [String]
        required :static_value, String, api_name: :staticValue

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticPropertyFilterDataSource::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticPropertyFilterDataSource::Type }

        # @!attribute sort_by
        #
        #   @return [HubspotSDK::Models::Automation::APISort, nil]
        optional :sort_by, -> { HubspotSDK::Automation::APISort }, api_name: :sortBy

        # @!method initialize(name:, property_name:, static_value:, type:, sort_by: nil)
        #   @param name [String]
        #   @param property_name [String]
        #   @param static_value [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticPropertyFilterDataSource::Type]
        #   @param sort_by [HubspotSDK::Models::Automation::APISort]

        # @see HubspotSDK::Models::Automation::APIStaticPropertyFilterDataSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STATIC_PROPERTY_FILTER = :STATIC_PROPERTY_FILTER

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
