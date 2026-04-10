# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::CardsDev#migrate_views
        class CardsDevMigrateViewsParams < HubSpotSDK::Models::Crm::Extensions::CardMigrateViewsRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!method initialize(app_id:, request_options: {})
          #   @param app_id [Integer]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
