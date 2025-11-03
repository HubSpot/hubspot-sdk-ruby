# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        module PartnerClients
          # @see HubspotSDK::Resources::Crm::Objects::PartnerClients::Associations#list
          class AssociationListParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute partner_client_id
            #
            #   @return [String]
            required :partner_client_id, String

            # @!attribute after
            #   The paging cursor token of the last successfully read resource will be returned
            #   as the `paging.next.after` JSON property of a paged response containing more
            #   results.
            #
            #   @return [String, nil]
            optional :after, String

            # @!attribute include_fa
            #
            #   @return [Boolean, nil]
            optional :include_fa, HubspotSDK::Internal::Type::Boolean

            # @!attribute limit
            #   The maximum number of results to display per page.
            #
            #   @return [Integer, nil]
            optional :limit, Integer

            # @!method initialize(partner_client_id:, after: nil, include_fa: nil, limit: nil, request_options: {})
            #   Some parameter documentations has been truncated, see
            #   {HubspotSDK::Models::Crm::Objects::PartnerClients::AssociationListParams} for
            #   more details.
            #
            #   @param partner_client_id [String]
            #
            #   @param after [String] The paging cursor token of the last successfully read resource will be returned
            #
            #   @param include_fa [Boolean]
            #
            #   @param limit [Integer] The maximum number of results to display per page.
            #
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
