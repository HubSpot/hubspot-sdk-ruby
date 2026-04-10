# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::PartnerServices#list
        class PartnerServiceListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute partner_service_id
          #
          #   @return [String]
          required :partner_service_id, String

          # @!attribute to_object_type
          #
          #   @return [String]
          required :to_object_type, String

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(partner_service_id:, to_object_type:, after: nil, limit: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Objects::PartnerServiceListParams} for more details.
          #
          #   @param partner_service_id [String]
          #
          #   @param to_object_type [String]
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
