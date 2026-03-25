# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Campaigns#update
      class CampaignUpdateParams < HubspotSDK::Models::Marketing::PublicCampaignInput
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute campaign_guid
        #
        #   @return [String]
        required :campaign_guid, String

        # @!method initialize(campaign_guid:, request_options: {})
        #   @param campaign_guid [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
