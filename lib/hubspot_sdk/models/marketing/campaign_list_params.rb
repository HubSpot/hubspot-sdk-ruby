# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Campaigns#list
      class CampaignListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   A cursor for pagination. If provided, the results will start after the given
        #   cursor. Example: NTI1Cg%3D%3D
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of results to return. Allowed values range from 1 to 100
        #   Default: 50
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #   A filter to return campaigns whose names contain the specified substring. This
        #   allows partial matching of campaign names, returning all campaigns that include
        #   the given substring in their name. If this parameter is not provided, the search
        #   will return all campaigns
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute properties
        #   A comma-separated list of the properties to be returned in the response. If any
        #   of the specified properties has empty value on the requested object(s), they
        #   will be ignored and not returned in response. If this parameter is empty, the
        #   response will include an empty properties map
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sort
        #   The field by which to sort the results. Allowed values are hs_name, createdAt,
        #   updatedAt. An optional '-' before the property name can denote descending order
        #   Default: hs_name
        #
        #   @return [String, nil]
        optional :sort, String

        # @!method initialize(after: nil, limit: nil, name: nil, properties: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::CampaignListParams} for more details.
        #
        #   @param after [String] A cursor for pagination. If provided, the results will start after the given cur
        #
        #   @param limit [Integer] The maximum number of results to return. Allowed values range from 1 to 100
        #
        #   @param name [String] A filter to return campaigns whose names contain the specified substring. This a
        #
        #   @param properties [Array<String>] A comma-separated list of the properties to be returned in the response. If any
        #
        #   @param sort [String] The field by which to sort the results. Allowed values are hs_name, createdAt, u
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
