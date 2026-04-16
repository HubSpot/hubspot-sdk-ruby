# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_local_journal_batch_by_request
      class WebhookGetLocalJournalBatchByRequestParams < HubSpotSDK::Models::BatchInputString
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute install_portal_id
        #   The ID of the portal where the webhook is installed. This parameter is optional
        #   and is used to specify the portal context for the operation.
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(install_portal_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchByRequestParams} for
        #   more details.
        #
        #   @param install_portal_id [Integer] The ID of the portal where the webhook is installed. This parameter is optional
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
