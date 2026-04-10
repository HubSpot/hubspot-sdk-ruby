# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Campaigns#update
      class CampaignUpdateParams < HubSpotSDK::Models::Marketing::PublicCampaignInput
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute campaign_guid
        #
        #   @return [String]
        required :campaign_guid, String

        # @!method initialize(campaign_guid:, request_options: {})
        #   @param campaign_guid [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
