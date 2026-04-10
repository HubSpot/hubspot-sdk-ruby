# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::SourceCode#get
      class SourceCodeGetParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!method initialize(environment:, path:, request_options: {})
        #   @param environment [String]
        #   @param path [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
