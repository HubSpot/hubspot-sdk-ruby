# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicIntegrationEventFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute event_type_id
      #
      #   @return [Integer]
      required :event_type_id, Integer, api_name: :eventTypeId

      # @!attribute filter_lines
      #
      #   @return [Array<HubspotSDK::Models::PublicEventFilterMetadata>]
      required :filter_lines,
               -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::PublicEventFilterMetadata] },
               api_name: :filterLines

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicIntegrationEventFilter::FilterType]
      required :filter_type,
               enum: -> { HubspotSDK::PublicIntegrationEventFilter::FilterType },
               api_name: :filterType

      # @!method initialize(event_type_id:, filter_lines:, filter_type:)
      #   @param event_type_id [Integer]
      #   @param filter_lines [Array<HubspotSDK::Models::PublicEventFilterMetadata>]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicIntegrationEventFilter::FilterType]

      # @see HubspotSDK::Models::PublicIntegrationEventFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        INTEGRATION_EVENT = :INTEGRATION_EVENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
