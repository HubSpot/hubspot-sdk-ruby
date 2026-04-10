# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::FeatureFlags#update
      class FeatureFlagUpdateParams < HubSpotSDK::Models::Crm::FlagPutRequest
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

        # @!method initialize(app_id:, flag_name:, request_options: {})
        #   @param app_id [Integer]
        #   @param flag_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
