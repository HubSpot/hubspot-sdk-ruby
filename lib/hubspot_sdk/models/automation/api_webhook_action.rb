# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIWebhookAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #   The ID for this action.
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute method_
        #   The HTTP method to use when calling the webhook URL
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Method]
        required :method_, enum: -> { HubspotSDK::Automation::APIWebhookAction::Method }, api_name: :method

        # @!attribute query_params
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIInputVariable>]
        required :query_params,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIInputVariable] },
                 api_name: :queryParams

        # @!attribute type
        #   The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        #   "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIWebhookAction::Type }

        # @!attribute webhook_url
        #   The URL to call each time this action is executed.
        #
        #   @return [String]
        required :webhook_url, String, api_name: :webhookUrl

        # @!attribute auth_settings
        #   The type of auth to use when calling the webhook endpoint.
        #
        #   @return [HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings, nil]
        optional :auth_settings,
                 union: -> { HubspotSDK::Automation::APIWebhookAction::AuthSettings },
                 api_name: :authSettings

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(action_id:, method_:, query_params:, type:, webhook_url:, auth_settings: nil, connection: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIWebhookAction} for more details.
        #
        #   @param action_id [String] The ID for this action.
        #
        #   @param method_ [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Method] The HTTP method to use when calling the webhook URL
        #
        #   @param query_params [Array<HubspotSDK::Models::Automation::APIInputVariable>]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Type] The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH", "AB_TEST_BRA
        #
        #   @param webhook_url [String] The URL to call each time this action is executed.
        #
        #   @param auth_settings [HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings] The type of auth to use when calling the webhook endpoint.
        #
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]

        # The HTTP method to use when calling the webhook URL
        #
        # @see HubspotSDK::Models::Automation::APIWebhookAction#method_
        module Method
          extend HubspotSDK::Internal::Type::Enum

          CONNECT = :CONNECT
          DELETE = :DELETE
          GET = :GET
          HEAD = :HEAD
          OPTIONS = :OPTIONS
          PATCH = :PATCH
          POST = :POST
          PUT = :PUT
          TRACE = :TRACE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        #
        # @see HubspotSDK::Models::Automation::APIWebhookAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          WEBHOOK = :WEBHOOK

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of auth to use when calling the webhook endpoint.
        #
        # @see HubspotSDK::Models::Automation::APIWebhookAction#auth_settings
        module AuthSettings
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings }

          variant -> { HubspotSDK::Automation::APISignatureWebhookAuthSettings }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings)]
        end
      end
    end
  end
end
