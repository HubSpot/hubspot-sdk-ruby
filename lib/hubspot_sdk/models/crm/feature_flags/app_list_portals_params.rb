# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module FeatureFlags
        # @see HubspotSDK::Resources::CRM::FeatureFlags::Apps#list_portals
        class AppListPortalsParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute app_id
          #
          #   @return [Integer]
          required :app_id, Integer

          # @!attribute limit
          #   The maximum number of results to return in a single request.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute start_portal_id
          #   The initial account ID for listing, enabling pagination.
          #
          #   @return [Integer, nil]
          optional :start_portal_id, Integer

          # @!method initialize(app_id:, limit: nil, start_portal_id: nil, request_options: {})
          #   @param app_id [Integer]
          #
          #   @param limit [Integer] The maximum number of results to return in a single request.
          #
          #   @param start_portal_id [Integer] The initial account ID for listing, enabling pagination.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
