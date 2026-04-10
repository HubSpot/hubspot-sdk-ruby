# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class AbTestRerunRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute ab_test_id
        #   ID of the test to rerun.
        #
        #   @return [String]
        required :ab_test_id, String, api_name: :abTestId

        # @!attribute variation_id
        #   ID of the object to reactivate as a test variation.
        #
        #   @return [String]
        required :variation_id, String, api_name: :variationId

        # @!method initialize(ab_test_id:, variation_id:)
        #   @param ab_test_id [String] ID of the test to rerun.
        #
        #   @param variation_id [String] ID of the object to reactivate as a test variation.
      end
    end
  end
end
