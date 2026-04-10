# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubSpotSDK::Resources::Cms::Hubdb::Tables#get_draft
        class TableGetDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute include_foreign_ids
          #
          #   @return [Boolean, nil]
          optional :include_foreign_ids, HubSpotSDK::Internal::Type::Boolean

          # @!attribute is_get_localized_schema
          #
          #   @return [Boolean, nil]
          optional :is_get_localized_schema, HubSpotSDK::Internal::Type::Boolean

          # @!method initialize(table_id_or_name:, archived: nil, include_foreign_ids: nil, is_get_localized_schema: nil, request_options: {})
          #   @param table_id_or_name [String]
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param include_foreign_ids [Boolean]
          #
          #   @param is_get_localized_schema [Boolean]
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
