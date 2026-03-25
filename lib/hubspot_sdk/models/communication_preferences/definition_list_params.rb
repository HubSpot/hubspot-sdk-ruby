# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      # @see HubspotSDK::Resources::CommunicationPreferences::Definitions#list
      class DefinitionListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute business_unit_id
        #   The unique identifier of the business unit for which to retrieve the
        #   subscription definitions.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer

        # @!attribute include_translations
        #   A boolean indicating whether to include translations of the subscription
        #   definitions. Defaults to false if not specified.
        #
        #   @return [Boolean, nil]
        optional :include_translations, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(business_unit_id: nil, include_translations: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::DefinitionListParams} for more
        #   details.
        #
        #   @param business_unit_id [Integer] The unique identifier of the business unit for which to retrieve the subscriptio
        #
        #   @param include_translations [Boolean] A boolean indicating whether to include translations of the subscription definit
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
