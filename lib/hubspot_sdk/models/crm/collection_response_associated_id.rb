# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseAssociatedID < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::AssociatedID>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociatedID] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::AssociatedID>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
