# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#update_by_external_event_id
      class MarketingEventUpdateByExternalEventIDParams < HubSpotSDK::Models::Marketing::MarketingEventUpdateRequestParams
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute external_event_id
        #
        #   @return [String]
        required :external_event_id, String

        # @!attribute external_account_id
        #
        #   @return [String]
        required :external_account_id, String

        # @!method initialize(external_event_id:, external_account_id:, request_options: {})
        #   @param external_event_id [String]
        #   @param external_account_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
