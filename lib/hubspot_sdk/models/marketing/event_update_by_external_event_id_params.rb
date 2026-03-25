# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#update_by_external_event_id
      class EventUpdateByExternalEventIDParams < HubspotSDK::Models::Marketing::MarketingEventUpdateRequestParams
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
