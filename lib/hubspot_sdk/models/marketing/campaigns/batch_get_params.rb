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
          #   End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          #   fetch the metrics associated with the assets for a specified period. If not
          #   provided, no asset metrics will be fetched.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute properties
          #   A comma-separated list of the properties to be returned in the response. If any
          #   of the specified properties has empty value on the requested object(s), they
          #   will be ignored and not returned in response. If this parameter is empty, the
          #   response will include an empty properties map.
          #
          #   @return [Array<String>, nil]
          optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

          # @!attribute start_date
          #   Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          #   fetch the metrics associated with the assets for a specified period. If not
          #   provided, no asset metrics will be fetched.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(end_date: nil, properties: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Campaigns::BatchGetParams} for more details.
          #
          #   @param end_date [String] End date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to f
          #
          #   @param properties [Array<String>] A comma-separated list of the properties to be returned in the response. If any
          #
          #   @param start_date [String] Start date to fetch asset metrics, formatted as YYYY-MM-DD. This date is used to
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
