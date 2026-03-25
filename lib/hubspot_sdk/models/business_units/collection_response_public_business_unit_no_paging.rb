# frozen_string_literal: true

module HubspotSDK
  module Models
    module BusinessUnits
      class CollectionResponsePublicBusinessUnitNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   The collection of Business Units
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>] The collection of Business Units
      end
    end
  end
end
