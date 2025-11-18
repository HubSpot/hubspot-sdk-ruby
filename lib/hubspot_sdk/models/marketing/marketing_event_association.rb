# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventAssociation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute marketing_event_id
        #
        #   @return [String]
        required :marketing_event_id, String, api_name: :marketingEventId

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute external_account_id
        #
        #   @return [String, nil]
        optional :external_account_id, String, api_name: :externalAccountId

        # @!attribute external_event_id
        #
        #   @return [String, nil]
        optional :external_event_id, String, api_name: :externalEventId

        # @!method initialize(marketing_event_id:, name:, external_account_id: nil, external_event_id: nil)
        #   @param marketing_event_id [String]
        #   @param name [String]
        #   @param external_account_id [String]
        #   @param external_event_id [String]
      end
    end

    MarketingEventAssociation = Marketing::MarketingEventAssociation
  end
end
