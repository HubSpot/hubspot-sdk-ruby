# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#upsert_by_external_event_id
      class EventUpsertByExternalEventIDParams < HubspotSDK::Models::Marketing::MarketingEventCreateRequestParams
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute path_external_event_id
        #
        #   @return [String]
        required :path_external_event_id, String

        # @!method initialize(path_external_event_id:, request_options: {})
        #   @param path_external_event_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
