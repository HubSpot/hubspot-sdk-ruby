# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::SourceCode#get_metadata
      class SourceCodeGetMetadataParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute environment
        #
        #   @return [String]
        required :environment, String

        # @!attribute path
        #
        #   @return [String]
        required :path, String

        # @!attribute properties
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(environment:, path:, properties: nil, request_options: {})
        #   @param environment [String]
        #   @param path [String]
        #   @param properties [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
