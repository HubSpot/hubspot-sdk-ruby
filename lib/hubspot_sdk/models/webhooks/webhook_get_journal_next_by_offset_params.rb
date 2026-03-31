# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::Webhooks#get_journal_next_by_offset
      class WebhookGetJournalNextByOffsetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute offset
        #
        #   @return [String]
        required :offset, String

        # @!attribute install_portal_id
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(offset:, install_portal_id: nil, request_options: {})
        #   @param offset [String]
        #   @param install_portal_id [Integer]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
