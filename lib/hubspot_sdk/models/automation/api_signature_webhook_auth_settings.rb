# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APISignatureWebhookAuthSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #   The appId that this signature will be generated for.
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute type
        #   The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings::Type]
        required :type, enum: -> { HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type }

        # @!method initialize(app_id:, type:)
        #   @param app_id [Integer] The appId that this signature will be generated for.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings::Type] The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"

        # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        #
        # @see HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          SIGNATURE = :SIGNATURE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
