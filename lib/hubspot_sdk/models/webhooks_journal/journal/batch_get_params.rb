# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      module Journal
        # @see HubSpotSDK::Resources::WebhooksJournal::Journal::Batch#get
        class BatchGetParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute install_portal_id
          #   An integer representing the ID of the portal installation for which the webhooks
          #   journal data should be retrieved.
          #
          #   @return [Integer, nil]
          optional :install_portal_id, Integer

          # @!method initialize(install_portal_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetParams} for more details.
          #
          #   @param install_portal_id [Integer] An integer representing the ID of the portal installation for which the webhooks
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
