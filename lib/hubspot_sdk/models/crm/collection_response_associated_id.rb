# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponseAssociatedID < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::AssociatedID>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AssociatedID] }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubSpotSDK::Models::Crm::AssociatedID>]
        #   @param paging [HubSpotSDK::Models::Paging]
      end
    end
  end
end
