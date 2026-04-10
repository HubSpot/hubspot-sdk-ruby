# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicCampaignInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #   A collection of key-value pairs representing the properties of the campaign.
        #   Each key is a property name, and the corresponding value is the property's
        #   value.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!method initialize(properties:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::PublicCampaignInput} for more details.
        #
        #   @param properties [Hash{Symbol=>String}] A collection of key-value pairs representing the properties of the campaign. Eac
      end
    end
  end
end
