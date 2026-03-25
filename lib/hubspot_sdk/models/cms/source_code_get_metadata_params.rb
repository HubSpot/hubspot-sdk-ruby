# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::SourceCode#get_metadata
      class SourceCodeGetMetadataParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute environment
        #
        #   @return [String]
        required :environment, String

        # @!attribute path
        #
        #   @return [String]
        required :path, String

        # @!attribute properties
        #   A comma-separated list of specific metadata properties to include in the
        #   response.
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(environment:, path:, properties: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::SourceCodeGetMetadataParams} for more details.
        #
        #   @param environment [String]
        #
        #   @param path [String]
        #
        #   @param properties [String] A comma-separated list of specific metadata properties to include in the respons
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
