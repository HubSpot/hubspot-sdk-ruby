# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#add_memberships_from
      class ListAddMembershipsFromParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute source_list_id
        #
        #   @return [String]
        required :source_list_id, String

        # @!method initialize(list_id:, source_list_id:, request_options: {})
        #   @param list_id [String]
        #   @param source_list_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
