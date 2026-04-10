# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::SiteSearch#get_indexed_data
      class SiteSearchGetIndexedDataParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute content_id
        #
        #   @return [String]
        required :content_id, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(content_id:, type: nil, request_options: {})
        #   @param content_id [String]
        #   @param type [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
