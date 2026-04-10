# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::SourceCode#upsert
      class SourceCodeUpsertParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute file
        #
        #   @return [Pathname, StringIO, IO, String, HubSpotSDK::FilePart, nil]
        optional :file, HubSpotSDK::Internal::Type::FileInput

        # @!method initialize(environment:, path:, file: nil, request_options: {})
        #   @param environment [String]
        #   @param path [String]
        #   @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
