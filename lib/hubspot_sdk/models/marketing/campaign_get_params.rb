# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Campaigns#get
      class CampaignGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute campaign_guid
        #
        #   @return [String]
        required :campaign_guid, String

        # @!attribute end_date
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(campaign_guid:, end_date: nil, properties: nil, start_date: nil, request_options: {})
        #   @param campaign_guid [String]
        #   @param end_date [String]
        #   @param properties [Array<String>]
        #   @param start_date [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
