# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_next_local_journal_entries
      class WebhookGetNextLocalJournalEntriesParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute offset
        #
        #   @return [String]
        required :offset, String

        # @!attribute install_portal_id
        #   The ID of the portal where the webhook is installed. This is an integer value.
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(offset:, install_portal_id: nil, request_options: {})
        #   @param offset [String]
        #
        #   @param install_portal_id [Integer] The ID of the portal where the webhook is installed. This is an integer value.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
