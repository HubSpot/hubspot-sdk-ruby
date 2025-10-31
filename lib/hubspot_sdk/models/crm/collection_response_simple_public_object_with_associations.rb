# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CollectionResponseSimplePublicObjectWithAssociations < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::SimplePublicObjectWithAssociations>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::SimplePublicObjectWithAssociations] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::Paging, nil]
        optional :paging, -> { HubspotSDK::Marketing::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::CRM::SimplePublicObjectWithAssociations>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::Paging] Contains information pagination of results.
      end
    end
  end
end
