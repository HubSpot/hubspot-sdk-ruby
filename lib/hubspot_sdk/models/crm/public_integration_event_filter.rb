# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicIntegrationEventFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute event_type_id
        #   The ID representing the type of event for the integration event filter.
        #
        #   @return [Integer]
        required :event_type_id, Integer, api_name: :eventTypeId

        # @!attribute filter_lines
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicEventFilterMetadata>]
        required :filter_lines,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicEventFilterMetadata] },
                 api_name: :filterLines

        # @!attribute filter_type
        #   Indicates the type of filter (INTEGRATION_EVENT).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicIntegrationEventFilter::FilterType },
                 api_name: :filterType

        # @!method initialize(event_type_id:, filter_lines:, filter_type:)
        #   @param event_type_id [Integer] The ID representing the type of event for the integration event filter.
        #
        #   @param filter_lines [Array<HubSpotSDK::Models::Crm::PublicEventFilterMetadata>]
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicIntegrationEventFilter::FilterType] Indicates the type of filter (INTEGRATION_EVENT).

        # Indicates the type of filter (INTEGRATION_EVENT).
        #
        # @see HubSpotSDK::Models::Crm::PublicIntegrationEventFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          INTEGRATION_EVENT = :INTEGRATION_EVENT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
