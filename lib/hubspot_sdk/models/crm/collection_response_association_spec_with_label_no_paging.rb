# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseAssociationSpecWithLabelNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::AssociationSpecWithLabel>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AssociationSpecWithLabel] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Crm::AssociationSpecWithLabel>]
      end
    end
  end
end
