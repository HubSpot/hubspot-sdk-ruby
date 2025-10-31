# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#import_draft
        class TableImportDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute config
          #
          #   @return [String, nil]
          optional :config, String

          # @!attribute file
          #
          #   @return [Pathname, StringIO, IO, String, HubspotSDK::FilePart, nil]
          optional :file, HubspotSDK::Internal::Type::FileInput

          # @!method initialize(config: nil, file: nil, request_options: {})
          #   @param config [String]
          #   @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
