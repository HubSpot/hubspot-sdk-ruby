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

          # @!attribute name
          #   The name for the cloned row.
          #
          #   @return [String, nil]
          optional :name, String

          # @!method initialize(table_id_or_name:, name: nil, request_options: {})
          #   @param table_id_or_name [String]
          #
          #   @param name [String] The name for the cloned row.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
