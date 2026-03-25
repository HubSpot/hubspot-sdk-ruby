# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SearchPublicResponseWrapper < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The ID of the source application of the marketing event
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute external_account_id
        #   The account ID associated with this marketing event in the external application
        #
        #   @return [String]
        required :external_account_id, String, api_name: :externalAccountId

        # @!attribute external_event_id
        #   The ID of the marketing event in the external event application
        #
        #   @return [String]
        required :external_event_id, String, api_name: :externalEventId

        # @!attribute object_id_
        #   The internal ID of the marketing event in HubSpot
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!method initialize(app_id:, external_account_id:, external_event_id:, object_id_:)
        #   @param app_id [Integer] The ID of the source application of the marketing event
        #
        #   @param external_account_id [String] The account ID associated with this marketing event in the external application
        #
        #   @param external_event_id [String] The ID of the marketing event in the external event application
        #
        #   @param object_id_ [String] The internal ID of the marketing event in HubSpot
      end
    end
  end
end
