# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseMultiAssociatedObjectWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::MultiAssociatedObjectWithLabel] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
