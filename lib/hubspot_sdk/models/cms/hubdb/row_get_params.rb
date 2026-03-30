# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Rows#get
        class RowGetParams < HubspotSDK::Internal::Type::BaseModel
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

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(table_id_or_name:, row_id:, archived: nil, request_options: {})
          #   @param table_id_or_name [String]
          #
          #   @param row_id [String]
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
