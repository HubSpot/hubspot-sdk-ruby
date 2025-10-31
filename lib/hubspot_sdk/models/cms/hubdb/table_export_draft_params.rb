# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#export_draft
        class TableExportDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute format_
          #   The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
          #
          #   @return [String, nil]
          optional :format_, String

          # @!method initialize(format_: nil, request_options: {})
          #   @param format_ [String] The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
