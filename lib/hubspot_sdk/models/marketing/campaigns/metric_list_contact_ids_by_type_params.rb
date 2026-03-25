# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Campaigns
        # @see HubspotSDK::Resources::Marketing::Campaigns::Metrics#list_contact_ids_by_type
        class MetricListContactIDsByTypeParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute campaign_guid
          #
          #   @return [String]
          required :campaign_guid, String

          # @!attribute contact_type
          #
          #   @return [String]
          required :contact_type, String

          # @!attribute after
          #   The paging cursor token of the last successfully read resource, used for
          #   pagination.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute end_date
          #   The end date for filtering contacts, formatted as a string.
          #
          #   @return [String, nil]
          optional :end_date, String

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute start_date
          #   The start date for filtering contacts, formatted as a string.
          #
          #   @return [String, nil]
          optional :start_date, String

          # @!method initialize(campaign_guid:, contact_type:, after: nil, end_date: nil, limit: nil, start_date: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Campaigns::MetricListContactIDsByTypeParams} for
          #   more details.
          #
          #   @param campaign_guid [String]
          #
          #   @param contact_type [String]
          #
          #   @param after [String] The paging cursor token of the last successfully read resource, used for paginat
          #
          #   @param end_date [String] The end date for filtering contacts, formatted as a string.
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param start_date [String] The start date for filtering contacts, formatted as a string.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
