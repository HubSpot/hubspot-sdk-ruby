# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Properties#list
      class PropertyListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute data_sensitivity
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PropertyListParams::DataSensitivity, nil]
        optional :data_sensitivity, enum: -> { HubspotSDK::Crm::PropertyListParams::DataSensitivity }

        # @!attribute locale
        #
        #   @return [String, nil]
        optional :locale, String

        # @!attribute properties
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(archived: nil, data_sensitivity: nil, locale: nil, properties: nil, request_options: {})
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param data_sensitivity [Symbol, HubspotSDK::Models::Crm::PropertyListParams::DataSensitivity]
        #
        #   @param locale [String]
        #
        #   @param properties [String]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module DataSensitivity
          extend HubspotSDK::Internal::Type::Enum

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
