# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubSpotSDK::Resources::Cms::Hubdb::Tables#reset_draft
        class TableResetDraftParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute include_foreign_ids
          #
          #   @return [Boolean, nil]
          optional :include_foreign_ids, HubSpotSDK::Internal::Type::Boolean

          # @!method initialize(table_id_or_name:, include_foreign_ids: nil, request_options: {})
          #   @param table_id_or_name [String]
          #   @param include_foreign_ids [Boolean]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
