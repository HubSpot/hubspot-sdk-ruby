# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#remove_memberships
      class ListRemoveMembershipsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute body
        #
        #   @return [Array<String>]
        required :body, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(list_id:, body:, request_options: {})
        #   @param list_id [String]
        #   @param body [Array<String>]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
