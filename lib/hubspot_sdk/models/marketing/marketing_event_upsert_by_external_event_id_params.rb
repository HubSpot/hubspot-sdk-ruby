# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#upsert_by_external_event_id
      class MarketingEventUpsertByExternalEventIDParams < HubSpotSDK::Models::Marketing::MarketingEventCreateRequestParams
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute path_external_event_id
        #
        #   @return [String]
        required :path_external_event_id, String

        # @!method initialize(path_external_event_id:, request_options: {})
        #   @param path_external_event_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
