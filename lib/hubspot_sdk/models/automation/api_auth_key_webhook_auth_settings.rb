# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAuthKeyWebhookAuthSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute location
        #   Where in the request this auth key should be located: "HEADER" or "QUERY_PARAM"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Location]
        required :location, enum: -> { HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location }

        # @!attribute name
        #   The name to use for this auth key.
        #
        #   @return [String]
        required :name, String

        # @!attribute secret_name
        #   The secret to pass through in this auth key.
        #
        #   @return [String]
        required :secret_name, String, api_name: :secretName

        # @!attribute type
        #   The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type }

        # @!method initialize(location:, name:, secret_name:, type:)
        #   @param location [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Location] Where in the request this auth key should be located: "HEADER" or "QUERY_PARAM"
        #
        #   @param name [String] The name to use for this auth key.
        #
        #   @param secret_name [String] The secret to pass through in this auth key.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Type] The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"

        # Where in the request this auth key should be located: "HEADER" or "QUERY_PARAM"
        #
        # @see HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings#location
        module Location
          extend HubspotSDK::Internal::Type::Enum

          HEADER = :HEADER
          QUERY_PARAM = :QUERY_PARAM

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of webhook auth settings this is, can be: "AUTH_KEY" or "SIGNATURE"
        #
        # @see HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          AUTH_KEY = :AUTH_KEY

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
