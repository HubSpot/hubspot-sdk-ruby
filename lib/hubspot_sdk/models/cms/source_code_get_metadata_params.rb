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

        # @!attribute properties
        #
        #   @return [String, nil]
        optional :properties, String

        # @!method initialize(environment:, properties: nil, request_options: {})
        #   @param environment [String]
        #   @param properties [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
