# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventExternalUniqueIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The id of the application that created the marketing event in HubSpot.
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute external_account_id
        #   The accountId that is associated with this marketing event in the external event
        #   application.
        #
        #   @return [String]
        required :external_account_id, String, api_name: :externalAccountId

        # @!attribute external_event_id
        #   The id of the marketing event in the external event application.
        #
        #   @return [String]
        required :external_event_id, String, api_name: :externalEventId

        # @!method initialize(app_id:, external_account_id:, external_event_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier} for more
        #   details.
        #
        #   @param app_id [Integer] The id of the application that created the marketing event in HubSpot.
        #
        #   @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        #   @param external_event_id [String] The id of the marketing event in the external event application.
      end
    end
  end
end
