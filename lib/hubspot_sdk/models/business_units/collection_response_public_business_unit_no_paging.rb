# frozen_string_literal: true

module HubspotSDK
  module Models
    module BusinessUnits
      class CollectionResponsePublicBusinessUnitNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   The collection of Business Units
        #
        #   @return [Array<HubspotSDK::Models::BusinessUnits::PublicBusinessUnit>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::BusinessUnits::PublicBusinessUnit] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::BusinessUnits::PublicBusinessUnit>] The collection of Business Units
      end
    end
  end
end
