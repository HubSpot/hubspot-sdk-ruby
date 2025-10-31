# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class AbTestEndRequestVNext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute ab_test_id
        #   ID of the test to end.
        #
        #   @return [String]
        required :ab_test_id, String, api_name: :abTestId

        # @!attribute winner_id
        #   ID of the object to designate as the test winner.
        #
        #   @return [String]
        required :winner_id, String, api_name: :winnerId

        # @!method initialize(ab_test_id:, winner_id:)
        #   Request body object for ending A/B tests.
        #
        #   @param ab_test_id [String] ID of the test to end.
        #
        #   @param winner_id [String] ID of the object to designate as the test winner.
      end
    end
  end
end
