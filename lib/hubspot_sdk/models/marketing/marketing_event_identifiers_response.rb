# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventIdentifiersResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute external_event_id
        #   The ID that is associated with this marketing event in the external event
        #   application
        #
        #   @return [String]
        required :external_event_id, String, api_name: :externalEventId

        # @!attribute marketing_event_name
        #   The name of the marketing event
        #
        #   @return [String]
        required :marketing_event_name, String, api_name: :marketingEventName

        # @!attribute object_id_
        #   The internal ID of the marketing event in HubSpot CRM
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!attribute app_info
        #
        #   @return [HubspotSDK::Models::Marketing::AppInfo, nil]
        optional :app_info, -> { HubspotSDK::Marketing::AppInfo }, api_name: :appInfo

        # @!attribute external_account_id
        #   The accountId that is associated with this marketing event in the external event
        #   application
        #
        #   @return [String, nil]
        optional :external_account_id, String, api_name: :externalAccountId

        # @!method initialize(external_event_id:, marketing_event_name:, object_id_:, app_info: nil, external_account_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::MarketingEventIdentifiersResponse} for more
        #   details.
        #
        #   @param external_event_id [String] The ID that is associated with this marketing event in the external event applic
        #
        #   @param marketing_event_name [String] The name of the marketing event
        #
        #   @param object_id_ [String] The internal ID of the marketing event in HubSpot CRM
        #
        #   @param app_info [HubspotSDK::Models::Marketing::AppInfo]
        #
        #   @param external_account_id [String] The accountId that is associated with this marketing event in the external event
      end
    end

    MarketingEventIdentifiersResponse = Marketing::MarketingEventIdentifiersResponse
  end
end
