# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_latest_journal_entry
      class WebhookGetLatestJournalEntryParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute install_portal_id
        #   The unique identifier of the portal installation for which to retrieve the
        #   latest journal entries. This parameter is optional and should be an integer.
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(install_portal_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalEntryParams} for more
        #   details.
        #
        #   @param install_portal_id [Integer] The unique identifier of the portal installation for which to retrieve the lates
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
