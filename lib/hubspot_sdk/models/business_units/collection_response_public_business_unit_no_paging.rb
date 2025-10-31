# frozen_string_literal: true

module HubspotSDK
  module Models
    module BusinessUnits
      # @see HubspotSDK::Resources::BusinessUnits#get_by_user_id
      class CollectionResponsePublicBusinessUnitNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #   The collection of Business Units
        #
        #   @return [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::PublicBusinessUnit] }

        # @!method initialize(results:)
        #   A response object containing a collection of Business Units
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::PublicBusinessUnit>] The collection of Business Units
      end
    end
  end
end
