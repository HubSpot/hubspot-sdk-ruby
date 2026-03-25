# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#search_identifiers_by_external_event_id
      class EventSearchIdentifiersByExternalEventIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute external_event_id
        #
        #   @return [String]
        required :external_event_id, String

        # @!method initialize(external_event_id:, request_options: {})
        #   @param external_event_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
