# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SearchPublicResponseWrapper < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute external_account_id
        #
        #   @return [String]
        required :external_account_id, String, api_name: :externalAccountId

        # @!attribute external_event_id
        #
        #   @return [String]
        required :external_event_id, String, api_name: :externalEventId

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!method initialize(app_id:, external_account_id:, external_event_id:, object_id_:)
        #   @param app_id [Integer]
        #   @param external_account_id [String]
        #   @param external_event_id [String]
        #   @param object_id_ [String]
      end
    end
  end
end
