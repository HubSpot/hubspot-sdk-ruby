# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APISignatureWebhookAuthSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer, api_name: :appId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings::Type]
        required :type, enum: -> { HubspotSDK::Automation::APISignatureWebhookAuthSettings::Type }

        # @!method initialize(app_id:, type:)
        #   @param app_id [Integer]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APISignatureWebhookAuthSettings::Type]

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
