# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      # @see HubSpotSDK::Resources::WebhooksJournal::JournalLocal#get_earliest
      class JournalLocalGetEarliestParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute install_portal_id
        #   The ID of the portal for which to retrieve the earliest webhook journal entries.
        #   This parameter is optional and should be an integer.
        #
        #   @return [Integer, nil]
        optional :install_portal_id, Integer

        # @!method initialize(install_portal_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::WebhooksJournal::JournalLocalGetEarliestParams} for more
        #   details.
        #
        #   @param install_portal_id [Integer] The ID of the portal for which to retrieve the earliest webhook journal entries.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
