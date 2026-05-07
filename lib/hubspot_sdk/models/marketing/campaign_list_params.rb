# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Campaigns#list
      class CampaignListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

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
        #   Filter campaigns by name. Optional.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute properties
        #   A comma-separated list of properties to include in the response.
        #    Unrecognized properties are ignored. Optional. Example:
        #    hs_name, hs_budget,hs_notes
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #   The property to sort results by. Optional.
        #
        #   @return [String, nil]
        optional :sort, String

        # @!method initialize(after: nil, limit: nil, name: nil, properties: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Marketing::CampaignListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param name [String] Filter campaigns by name. Optional.
        #
        #   @param properties [Array<String>] A comma-separated list of properties to include in the response.
        #
        #   @param sort [String] The property to sort results by. Optional.
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
