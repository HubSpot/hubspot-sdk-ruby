# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Campaigns#get
      class CampaignGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute start_date
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(campaign_guid:, end_date: nil, properties: nil, start_date: nil, request_options: {})
        #   @param campaign_guid [String]
        #   @param end_date [String]
        #   @param properties [Array<String>]
        #   @param start_date [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
