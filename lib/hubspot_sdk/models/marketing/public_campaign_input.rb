# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(properties:)
        #   @param properties [Hash{Symbol=>String}]
      end
    end
  end
end
