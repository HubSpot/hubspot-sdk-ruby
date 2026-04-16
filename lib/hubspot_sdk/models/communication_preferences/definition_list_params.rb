# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences::Definitions#list
      class DefinitionListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute business_unit_id
        #   An integer representing the ID of the business unit for which to retrieve
        #   subscription definitions.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute include_translations
        #   A boolean indicating whether to include translations of the communication
        #   preferences definitions in the response.
        #
        #   @return [Boolean, nil]
        optional :include_translations, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(business_unit_id: nil, include_translations: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::DefinitionListParams} for more
        #   details.
        #
        #   @param business_unit_id [Integer] An integer representing the ID of the business unit for which to retrieve subscr
        #
        #   @param include_translations [Boolean] A boolean indicating whether to include translations of the communication prefer
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
