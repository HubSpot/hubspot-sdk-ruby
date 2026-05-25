# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      module Journal
        # @see HubSpotSDK::Resources::WebhooksJournal::Journal::Batch#get_latest
        class BatchGetLatestParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute count
          #
          #   @return [Integer]
          required :count, Integer

          # @!attribute install_portal_id
          #   The ID of the portal installation. This is an integer value used to specify the
          #   portal context for the request.
          #
          #   @return [Integer, nil]
          optional :install_portal_id, Integer

          # @!method initialize(count:, install_portal_id: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::WebhooksJournal::Journal::BatchGetLatestParams} for more
          #   details.
          #
          #   @param count [Integer]
          #
          #   @param install_portal_id [Integer] The ID of the portal installation. This is an integer value used to specify the
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
