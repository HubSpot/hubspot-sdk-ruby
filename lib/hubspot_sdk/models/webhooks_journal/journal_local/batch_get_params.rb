# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      module JournalLocal
        # @see HubSpotSDK::Resources::WebhooksJournal::JournalLocal::Batch#get
        class BatchGetParams < HubSpotSDK::Models::BatchInputString
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute install_portal_id
          #   The ID of the portal where the webhooks are installed. This parameter is
          #   optional and is used to specify the target portal for the operation.
          #
          #   @return [Integer, nil]
          optional :install_portal_id, Integer

          # @!method initialize(install_portal_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::WebhooksJournal::JournalLocal::BatchGetParams} for more
          #   details.
          #
          #   @param install_portal_id [Integer] The ID of the portal where the webhooks are installed. This parameter is optiona
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
