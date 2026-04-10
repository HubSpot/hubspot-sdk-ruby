# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Hubdb
        # @see HubSpotSDK::Resources::Cms::Hubdb::Tables#delete_version
        class TableDeleteVersionParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute table_id_or_name
          #
          #   @return [String]
          required :table_id_or_name, String

          # @!attribute version_id
          #
          #   @return [Integer]
          required :version_id, Integer

          # @!method initialize(table_id_or_name:, version_id:, request_options: {})
          #   @param table_id_or_name [String]
          #   @param version_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
