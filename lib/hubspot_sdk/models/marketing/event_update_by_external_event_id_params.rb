# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#update_by_external_event_id
      class EventUpdateByExternalEventIDParams < HubspotSDK::Models::Marketing::MarketingEventUpdateRequestParams
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute external_account_id
        #   The accountId that is associated with this marketing event in the external event
        #   application
        #
        #   @return [String]
        required :external_account_id, String

        # @!method initialize(external_account_id:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::EventUpdateByExternalEventIDParams} for more
        #   details.
        #
        #   @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
