# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences::Definitions#list
      class DefinitionListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute include_translations
        #
        #   @return [Boolean, nil]
        optional :include_translations, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(business_unit_id: nil, include_translations: nil, request_options: {})
        #   @param business_unit_id [Integer]
        #   @param include_translations [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
