# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks#get_latest_local_journal
      class WebhookGetLatestLocalJournalParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute install_portal_id
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(install_portal_id: nil, request_options: {})
        #   @param install_portal_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
