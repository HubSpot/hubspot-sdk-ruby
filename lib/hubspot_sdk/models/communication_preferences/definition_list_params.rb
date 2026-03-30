# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences::Definitions#list
      class DefinitionListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute include_translations
        #
        #   @return [Boolean, nil]
        optional :include_translations, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(business_unit_id: nil, include_translations: nil, request_options: {})
        #   @param business_unit_id [Integer]
        #   @param include_translations [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
