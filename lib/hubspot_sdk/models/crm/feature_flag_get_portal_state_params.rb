# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::FeatureFlags#get_portal_state
      class FeatureFlagGetPortalStateParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute portal_id
        #
        #   @return [Integer]
        required :portal_id, Integer

        # @!method initialize(app_id:, flag_name:, portal_id:, request_options: {})
        #   @param app_id [Integer]
        #   @param flag_name [String]
        #   @param portal_id [Integer]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
