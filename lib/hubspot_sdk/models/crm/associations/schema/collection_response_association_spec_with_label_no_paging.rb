# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class CollectionResponseAssociationSpecWithLabelNoPaging < HubspotSDK::Internal::Type::BaseModel
            # @!attribute results
            #
            #   @return [Array<HubspotSDK::Models::CRM::AssociationSpecWithLabel>]
            required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::AssociationSpecWithLabel] }

            # @!method initialize(results:)
            #   @param results [Array<HubspotSDK::Models::CRM::AssociationSpecWithLabel>]
          end
        end
      end
    end
  end
end
