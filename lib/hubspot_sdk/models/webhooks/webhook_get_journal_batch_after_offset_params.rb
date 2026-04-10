# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#get_journal_batch_after_offset
      class WebhookGetJournalBatchAfterOffsetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute offset
        #
        #   @return [String]
        required :offset, String

        # @!attribute count
        #
        #   @return [Integer]
        required :count, Integer

        # @!attribute install_portal_id
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(offset:, count:, install_portal_id: nil, request_options: {})
        #   @param offset [String]
        #   @param count [Integer]
        #   @param install_portal_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
