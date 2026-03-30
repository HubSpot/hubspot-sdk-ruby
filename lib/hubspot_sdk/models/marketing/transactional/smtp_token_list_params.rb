# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Transactional
        # @see HubspotSDK::Resources::Marketing::Transactional::SmtpTokens#list
        class SmtpTokenListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute campaign_name
          #
          #   @return [String, nil]
          optional :campaign_name, String

          # @!attribute email_campaign_id
          #
          #   @return [String, nil]
          optional :email_campaign_id, String

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(after: nil, campaign_name: nil, email_campaign_id: nil, limit: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Transactional::SmtpTokenListParams} for more
          #   details.
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param campaign_name [String]
          #
          #   @param email_campaign_id [String]
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
