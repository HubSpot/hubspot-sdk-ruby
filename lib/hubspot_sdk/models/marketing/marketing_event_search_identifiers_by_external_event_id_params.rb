# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::MarketingEvents#search_identifiers_by_external_event_id
      class MarketingEventSearchIdentifiersByExternalEventIDParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute external_event_id
        #
        #   @return [String]
        required :external_event_id, String

        # @!method initialize(external_event_id:, request_options: {})
        #   @param external_event_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
