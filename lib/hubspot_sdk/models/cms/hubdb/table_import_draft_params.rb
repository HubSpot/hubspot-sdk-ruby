# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubSpotSDK::Resources::Cms::Hubdb::Tables#import_draft
        class TableImportDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute config
          #
          #   @return [String, nil]
          optional :config, String

          # @!attribute file
          #
          #   @return [Pathname, StringIO, IO, String, HubSpotSDK::FilePart, nil]
          optional :file, HubSpotSDK::Internal::Type::FileInput

          # @!method initialize(table_id_or_name:, config: nil, file: nil, request_options: {})
          #   @param table_id_or_name [String]
          #   @param config [String]
          #   @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
