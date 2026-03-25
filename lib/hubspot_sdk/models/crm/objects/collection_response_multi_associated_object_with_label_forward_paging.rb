# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class CollectionResponseMultiAssociatedObjectWithLabelForwardPaging < HubspotSDK::Internal::Type::BaseModel
          # @!attribute results
          #
          #   @return [Array<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::MultiAssociatedObjectWithLabel] }

          # @!attribute paging
          #
          #   @return [HubspotSDK::Models::ForwardPaging, nil]
          optional :paging, -> { HubspotSDK::ForwardPaging }

          # @!method initialize(results:, paging: nil)
          #   @param results [Array<HubspotSDK::Models::Crm::MultiAssociatedObjectWithLabel>]
          #   @param paging [HubspotSDK::Models::ForwardPaging]
        end
      end
    end
  end
end
