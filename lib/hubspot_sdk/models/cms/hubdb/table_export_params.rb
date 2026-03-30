# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#export
        class TableExportParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute format_
          #
          #   @return [String, nil]
          optional :format_, String

          # @!method initialize(table_id_or_name:, format_: nil, request_options: {})
          #   @param table_id_or_name [String]
          #   @param format_ [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
