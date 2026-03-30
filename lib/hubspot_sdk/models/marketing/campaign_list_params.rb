# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Campaigns#list
      class CampaignListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #
        #   @return [String, nil]
        optional :sort, String

        # @!method initialize(after: nil, limit: nil, name: nil, properties: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::CampaignListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param name [String]
        #
        #   @param properties [Array<String>]
        #
        #   @param sort [String]
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
