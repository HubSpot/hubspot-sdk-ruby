# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Properties#get
      class PropertyGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubSpotSDK::Internal::Type::Boolean

        # @!attribute data_sensitivity
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PropertyGetParams::DataSensitivity, nil]
        optional :data_sensitivity, enum: -> { HubSpotSDK::Crm::PropertyGetParams::DataSensitivity }

        # @!attribute locale
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute properties
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(object_type:, property_name:, archived: nil, data_sensitivity: nil, locale: nil, properties: nil, request_options: {})
        #   @param object_type [String]
        #
        #   @param property_name [String]
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param data_sensitivity [Symbol, HubSpotSDK::Models::Crm::PropertyGetParams::DataSensitivity]
        #
        #   @param locale [String]
        #
        #   @param properties [String]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module DataSensitivity
          extend HubSpotSDK::Internal::Type::Enum

          HIGHLY_SENSITIVE = :highly_sensitive
          NON_SENSITIVE = :non_sensitive
          SENSITIVE = :sensitive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
