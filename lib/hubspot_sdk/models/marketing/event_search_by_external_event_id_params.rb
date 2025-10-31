# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#search_by_external_event_id
      class EventSearchByExternalEventIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute q
        #   The id of the marketing event in the external event application
        #   (externalEventId)
        #
        #   @return [String]
        required :q, String

        # @!method initialize(q:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::EventSearchByExternalEventIDParams} for more
        #   details.
        #
        #   @param q [String] The id of the marketing event in the external event application (externalEventId
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
