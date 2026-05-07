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
        #   The end date for fetching asset metrics, in YYYY-MM-DD format. Optional.
        #   Example: 2000-01-27
        #
        #   @return [String, nil]
        optional :end_date, String

        # @!attribute properties
        #   A comma-separated list of properties to include in the response.
        #    Unrecognized properties are ignored. Optional. Example: hs_name,hs_budget, hs_notes
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute start_date
        #   The start date for fetching asset metrics, in YYYY-MM-DD format.
        #   Optional. Example: 2000-01-20
        #
        #   @return [String, nil]
        optional :start_date, String

        # @!method initialize(campaign_guid:, end_date: nil, properties: nil, start_date: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::CampaignGetParams} for more details.
        #
        #   @param campaign_guid [String]
        #
        #   @param end_date [String] The end date for fetching asset metrics, in YYYY-MM-DD format.
        #
        #   @param properties [Array<String>] A comma-separated list of properties to include in the response.
        #
        #   @param start_date [String] The start date for fetching asset metrics, in YYYY-MM-DD format.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
