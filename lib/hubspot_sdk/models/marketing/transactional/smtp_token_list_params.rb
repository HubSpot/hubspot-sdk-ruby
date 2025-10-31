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
          #   Starting point to get the next set of results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute campaign_name
          #   A name for the campaign tied to the SMTP API token.
          #
          #   @return [String, nil]
          optional :campaign_name, String

          # @!attribute email_campaign_id
          #   Identifier assigned to the campaign provided during the token creation.
          #
          #   @return [String, nil]
          optional :email_campaign_id, String

          # @!attribute limit
          #   Maximum number of tokens to return.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(after: nil, campaign_name: nil, email_campaign_id: nil, limit: nil, request_options: {})
          #   @param after [String] Starting point to get the next set of results.
          #
          #   @param campaign_name [String] A name for the campaign tied to the SMTP API token.
          #
          #   @param email_campaign_id [String] Identifier assigned to the campaign provided during the token creation.
          #
          #   @param limit [Integer] Maximum number of tokens to return.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
