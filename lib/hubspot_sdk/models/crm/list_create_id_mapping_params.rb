# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#create_id_mapping
      class ListCreateIDMappingParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute body
        #
        #   @return [Array<String>]
        required :body, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(body:, request_options: {})
        #   @param body [Array<String>]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
