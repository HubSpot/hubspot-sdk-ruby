# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SiteSearch#get_indexed_data
      class SiteSearchGetIndexedDataParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
