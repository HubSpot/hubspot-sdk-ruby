# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::FeatureFlags#list_portals
      class FeatureFlagListPortalsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute app_id
        #
        #   @return [Integer]
        required :app_id, Integer

        # @!attribute flag_name
        #
        #   @return [String]
        required :flag_name, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute start_portal_id
        #
        #   @return [Integer, nil]
        optional :start_portal_id, Integer

        # @!method initialize(app_id:, flag_name:, limit: nil, start_portal_id: nil, request_options: {})
        #   @param app_id [Integer]
        #
        #   @param flag_name [String]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param start_portal_id [Integer]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
