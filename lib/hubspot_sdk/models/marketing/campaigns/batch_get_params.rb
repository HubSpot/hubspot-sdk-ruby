# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Batch#get
        class BatchGetParams < HubspotSDK::Models::Marketing::BatchInputPublicCampaignReadInput
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute end_date
          #   The end date for filtering campaigns, in YYYY-MM-DD format.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute properties
          #   A comma-separated list of property names to include in the response.
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute start_date
          #   The start date for filtering campaigns, in YYYY-MM-DD format.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(end_date: nil, properties: nil, start_date: nil, request_options: {})
          #   @param end_date [String] The end date for filtering campaigns, in YYYY-MM-DD format.
          #
          #   @param properties [Array<String>] A comma-separated list of property names to include in the response.
          #
          #   @param start_date [String] The start date for filtering campaigns, in YYYY-MM-DD format.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
