# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_latest_local_journal_batch
      class WebhookGetLatestLocalJournalBatchParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute count
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute install_portal_id
        #   The ID of the portal installation to filter the webhook journal entries. It is
        #   an optional integer parameter.
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(count:, install_portal_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalBatchParams} for more
        #   details.
        #
        #   @param count [Integer]
        #
        #   @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. It is a
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
