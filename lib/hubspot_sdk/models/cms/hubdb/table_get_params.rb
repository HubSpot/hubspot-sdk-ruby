# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#get
        class TableGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute archived
          #   Set this to `true` to return details for an archived table. Defaults to `false`.
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute include_foreign_ids
          #   Set this to `true` to populate foreign ID values in the result.
          #
          #   @return [Boolean, nil]
          optional :include_foreign_ids, HubspotSDK::Internal::Type::Boolean

          # @!attribute is_get_localized_schema
          #   Indicates whether to retrieve the localized schema for the tables.
          #
          #   @return [Boolean, nil]
          optional :is_get_localized_schema, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(archived: nil, include_foreign_ids: nil, is_get_localized_schema: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Cms::Hubdb::TableGetParams} for more details.
          #
          #   @param archived [Boolean] Set this to `true` to return details for an archived table. Defaults to `false`.
          #
          #   @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the result.
          #
          #   @param is_get_localized_schema [Boolean] Indicates whether to retrieve the localized schema for the tables.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
