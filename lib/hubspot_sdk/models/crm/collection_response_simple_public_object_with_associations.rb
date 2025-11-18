# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class CollectionResponseSimplePublicObjectWithAssociations < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObjectWithAssociations] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Crm::SimplePublicObjectWithAssociations>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
