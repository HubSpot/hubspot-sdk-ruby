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
        #
        #   @return [HubspotSDK::Models::Crm::Paging, nil]
        optional :paging, -> { HubspotSDK::Crm::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::AssociatedID>]
        #   @param paging [HubspotSDK::Models::Crm::Paging]
      end
    end
  end
end
