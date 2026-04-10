# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class MarketingEventAssociation < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute marketing_event_id
        #   The internal ID of the marketing event in HubSpot
        #
        #   @return [String]
        required :marketing_event_id, String, api_name: :marketingEventId

        # @!attribute name
        #   The name of the marketing event in HubSpot
        #
        #   @return [String]
        required :name, String

        # @!attribute external_account_id
        #   The account ID that is associated with this marketing event in the external
        #   event application
        #
        #   @return [String, nil]
        optional :external_account_id, String, api_name: :externalAccountId

        # @!attribute external_event_id
        #   The event ID that is associated with this marketing event in the external event
        #   application
        #
        #   @return [String, nil]
        optional :external_event_id, String, api_name: :externalEventId

        # @!method initialize(marketing_event_id:, name:, external_account_id: nil, external_event_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::MarketingEventAssociation} for more details.
        #
        #   @param marketing_event_id [String] The internal ID of the marketing event in HubSpot
        #
        #   @param name [String] The name of the marketing event in HubSpot
        #
        #   @param external_account_id [String] The account ID that is associated with this marketing event in the external even
        #
        #   @param external_event_id [String] The event ID that is associated with this marketing event in the external event
      end
    end

    MarketingEventAssociation = Marketing::MarketingEventAssociation
  end
end
