# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAuthKeyWebhookAuthSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute location
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Location]
        required :location, enum: -> { HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Location }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute secret_name
        #
        #   @return [String]
        required :secret_name, String, api_name: :secretName

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAuthKeyWebhookAuthSettings::Type }

        # @!method initialize(location:, name:, secret_name:, type:)
        #   @param location [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Location]
        #   @param name [String]
        #   @param secret_name [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings::Type]

        # @see HubspotSDK::Models::Automation::APIAuthKeyWebhookAuthSettings#location
        module Location
          extend HubspotSDK::Internal::Type::Enum

          HEADER = :HEADER
          QUERY_PARAM = :QUERY_PARAM

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
