# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIWebhookAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute method_
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
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIWebhookAction::Type }

        # @!attribute webhook_url
        #
        #   @return [String]
        required :webhook_url, String, api_name: :webhookUrl

        # @!attribute auth_settings
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
        #   @param action_id [String]
        #   @param method_ [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Method]
        #   @param query_params [Array<HubspotSDK::Models::Automation::APIInputVariable>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIWebhookAction::Type]
        #   @param webhook_url [String]
        #   @param auth_settings [HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings]
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]

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

        # @see HubspotSDK::Models::Automation::APIWebhookAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          WEBHOOK = :WEBHOOK

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
