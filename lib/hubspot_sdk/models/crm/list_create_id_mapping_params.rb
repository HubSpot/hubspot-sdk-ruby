# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#create_id_mapping
      class ListCreateIDMappingParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute body
        #
        #   @return [Array<String>]
        required :body, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(body:, request_options: {})
        #   @param body [Array<String>]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
