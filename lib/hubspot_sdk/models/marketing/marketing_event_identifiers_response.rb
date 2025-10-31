# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventIdentifiersResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute external_event_id
        #
        #   @return [String]
        required :external_event_id, String, api_name: :externalEventId

        # @!attribute marketing_event_name
        #
        #   @return [String]
        required :marketing_event_name, String, api_name: :marketingEventName

        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute app_info
        #
        #   @return [HubspotSDK::Models::Marketing::AppInfo, nil]
        optional :app_info, -> { HubspotSDK::Marketing::AppInfo }, api_name: :appInfo

        # @!attribute external_account_id
        #
        #   @return [String, nil]
        optional :external_account_id, String, api_name: :externalAccountId

        # @!method initialize(external_event_id:, marketing_event_name:, object_id_:, app_info: nil, external_account_id: nil)
        #   @param external_event_id [String]
        #   @param marketing_event_name [String]
        #   @param object_id_ [String]
        #   @param app_info [HubspotSDK::Models::Marketing::AppInfo]
        #   @param external_account_id [String]
      end
    end
  end
end
