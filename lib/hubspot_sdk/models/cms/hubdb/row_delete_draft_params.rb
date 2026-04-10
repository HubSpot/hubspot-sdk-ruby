# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubSpotSDK::Resources::Cms::Hubdb::Rows#delete_draft
        class RowDeleteDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute row_id
          #
          #   @return [String]
          required :row_id, String

          # @!method initialize(table_id_or_name:, row_id:, request_options: {})
          #   @param table_id_or_name [String]
          #   @param row_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
