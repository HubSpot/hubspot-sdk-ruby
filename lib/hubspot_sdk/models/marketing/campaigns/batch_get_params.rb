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

          # @!method initialize(end_date: nil, properties: nil, start_date: nil, request_options: {})
          #   @param end_date [String]
          #   @param properties [Array<String>]
          #   @param start_date [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
