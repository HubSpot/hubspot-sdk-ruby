# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks#get_local_journal_status
      class WebhookGetLocalJournalStatusParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute status_id
        #
        #   @return [String]
        required :status_id, String

        # @!method initialize(status_id:, request_options: {})
        #   @param status_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
