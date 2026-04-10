# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponseAssociationSpecWithLabelNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Crm::AssociationSpecWithLabel>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AssociationSpecWithLabel] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Crm::AssociationSpecWithLabel>]
      end
    end
  end
end
