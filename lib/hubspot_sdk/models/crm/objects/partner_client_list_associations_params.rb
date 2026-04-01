# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::PartnerClients#list_associations
        class PartnerClientListAssociationsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute partner_client_id
          #
          #   @return [String]
          required :partner_client_id, String

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

          # @!method initialize(partner_client_id:, to_object_type:, after: nil, limit: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Objects::PartnerClientListAssociationsParams} for more
          #   details.
          #
          #   @param partner_client_id [String]
          #
          #   @param to_object_type [String]
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
