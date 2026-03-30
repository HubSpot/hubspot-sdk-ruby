# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubspotSDK::Resources::Cms::Hubdb::Tables#unpublish
        class TableUnpublishParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute include_foreign_ids
          #
          #   @return [Boolean, nil]
          optional :include_foreign_ids, HubspotSDK::Internal::Type::Boolean

          # @!method initialize(table_id_or_name:, include_foreign_ids: nil, request_options: {})
          #   @param table_id_or_name [String]
          #   @param include_foreign_ids [Boolean]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
