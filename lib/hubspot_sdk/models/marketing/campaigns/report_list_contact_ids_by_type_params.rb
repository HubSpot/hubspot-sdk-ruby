# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Reports#list_contact_ids_by_type
        class ReportListContactIDsByTypeParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute after
          #   A cursor for pagination. If provided, the results will start after the given
          #   cursor. Example: NTI1Cg%3D%3D
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute end_date
          #   End date for the report data, formatted as YYYY-MM-DD. Default value: Current
          #   date
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute limit
          #   Limit for the number of contacts to fetch Default: 100
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute start_date
          #   The start date for the report data, formatted as YYYY-MM-DD. Default value:
          #   2006-01-01
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Campaigns::ReportListContactIDsByTypeParams} for
          #   more details.
          #
          #   @param campaign_guid [String]
          #
          #   @param after [String] A cursor for pagination. If provided, the results will start after the given cur
          #
          #   @param end_date [String] End date for the report data, formatted as YYYY-MM-DD.
          #
          #   @param limit [Integer] Limit for the number of contacts to fetch
          #
          #   @param start_date [String] The start date for the report data, formatted as YYYY-MM-DD.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
