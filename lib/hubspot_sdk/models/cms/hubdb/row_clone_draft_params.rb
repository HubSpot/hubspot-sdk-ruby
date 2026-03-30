# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Rows#clone_draft
        class RowCloneDraftParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute row_id
          #
          #   @return [String]
          required :row_id, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(table_id_or_name:, row_id:, name: nil, request_options: {})
          #   @param table_id_or_name [String]
          #   @param row_id [String]
          #   @param name [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
