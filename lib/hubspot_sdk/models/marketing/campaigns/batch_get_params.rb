# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubSpotSDK::Resources::Marketing::Campaigns::Batch#get
        class BatchGetParams < HubSpotSDK::Models::Marketing::BatchInputPublicCampaignReadInput
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

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

          # @!method initialize(end_date: nil, properties: nil, start_date: nil, request_options: {})
          #   @param end_date [String]
          #   @param properties [Array<String>]
          #   @param start_date [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
