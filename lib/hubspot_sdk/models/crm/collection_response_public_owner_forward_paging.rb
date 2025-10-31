# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class CollectionResponsePublicOwnerForwardPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicOwner>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicOwner] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::ForwardPaging, nil]
        optional :paging, -> { HubspotSDK::ForwardPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::CRM::PublicOwner>]
        #   @param paging [HubspotSDK::Models::ForwardPaging]
      end
    end
  end
end
