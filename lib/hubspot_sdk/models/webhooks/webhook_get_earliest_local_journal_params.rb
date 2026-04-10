# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_earliest_local_journal
      class WebhookGetEarliestLocalJournalParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute install_portal_id
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(install_portal_id: nil, request_options: {})
        #   @param install_portal_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
