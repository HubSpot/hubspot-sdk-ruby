# frozen_string_literal: true

module HubSpotSDK
  module Models
    module BusinessUnits
      class CollectionResponsePublicBusinessUnitNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   The collection of Business Units
        #
        #   @return [Array<HubSpotSDK::Models::BusinessUnits::PublicBusinessUnit>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BusinessUnits::PublicBusinessUnit] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::BusinessUnits::PublicBusinessUnit>] The collection of Business Units
      end
    end
  end
end
